if Spree::Config.instance
Spree::Config.set(:default_locale => "ru")
Spree::Config.set(:default_country_id=> "110")
Spree::Config.set(:address_requires_state=> "false")
end