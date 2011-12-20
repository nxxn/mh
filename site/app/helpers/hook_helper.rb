module HookHelper
  
  # Allow hooks to be used in views like this:
  # 
  #   <%= hook :some_hook %>
  #
  #   <%= hook :some_hook do %>
  #     <p>Some HTML</p>
  #   <% end %>
  # 
  def hook(hook_name, locals = {}, &block)
    content = block_given? ? capture(&block) : ''
    Spree::ThemeSupport::Hook.render_hook(hook_name, content, self, locals)
  end

  def locals_hash(names, binding)
    names.inject({}) {|memo, key| memo[key.to_sym] = eval(key, binding); memo}
  end
  def seo_url(taxon, product = nil)
    return '/t/' + taxon.permalink if product.nil?
    warn "DEPRECATION: the /t/taxon-permalink/p/product-permalink urls are "+
      "not used anymore. Use product_url instead. (called from #{caller[0]})"
    return product_url(product)
  end
end