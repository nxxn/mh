# Configure Spree Preferences
# 
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do: 
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  # config.site_name = "Spree Demo Site"
  config.default_country_id = "110"
  config.address_requires_state = "false"
  config.admin_products_per_page = "5000"
  config.orders_per_page = "5000"
  config.admin_interface_logo = "admin/bg/spree_50.png"
  config.logo = "admin/logo.png"
  config.products_per_page = "16"
  config.allow_ssl_in_production = "true"


end

Spree.user_class = "Spree::User"
