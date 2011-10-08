require 'spree_core'
require 'site_hooks'

module Site
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      
      
     ActiveSupport::Notifications.subscribe('spree.order.contents_changed') do |*args|
        event = ActiveSupport::Notifications::Event.new(*args)
        order = event.payload[:order]
        order.line_items.each do |line_item|
          if((order.state == "cart") && (line_item.quantity > line_item.variant.on_hand))
            line_item.update_attribute(:quantity, line_item.variant.on_hand)
            #order.update_totals && order.save
            order.reload.update!
          end
        end
      end
      
      
    end
    
    config.to_prepare &method(:activate).to_proc
  end
end
