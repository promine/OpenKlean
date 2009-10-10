# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  
  before_filter :set_locale

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  # set the base layout
  layout 'application'

  protected
  def set_locale
    # if params[:locale] is nil then I18n.default_locale will be used 
    I18n.locale = params[:locale]
  end

end
