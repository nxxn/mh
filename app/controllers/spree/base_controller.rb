class Spree::BaseController < ActionController::Base
  include SpreeBase

#  before_filter :set_locale

#  def default_url_options(options={})
#  	if I18n.locale != I18n.default_locale
#    	{ :locale => I18n.locale }
#    else
#    	{ :locale => I18n.default_locale }
#	  end
#  end

#   def set_locale
#      # if params[:locale] is nil then I18n.default_locale will be used
#      I18n.locale = params[:locale] ||= I18n.default_locale
#   end

end
