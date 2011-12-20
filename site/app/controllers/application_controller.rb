class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  def default_url_options(options={})
  	if I18n.locale != I18n.default_locale
    	{ :locale => I18n.locale }
    else
    	{ :locale => I18n.default_locale }
	  end
  end

  def set_locale
   redirect_to url_for(:host => "vertino.lv")

  end
end
