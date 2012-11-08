if Spree::Config.instance
Spree::Config.set(:default_locale => "ru")
Spree::Config.set(:default_country_id=> "110")
Spree::Config.set(:address_requires_state=> "false")
Spree::Config.set(:admin_products_per_page=> "5000")
Spree::Config.set(:show_zero_stock_products=> "false")

end