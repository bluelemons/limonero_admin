class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :mailer_set_url_options
  
  def mailer_set_url_options
    ActionMailer::Base.default_url_options[:host] = request.host_with_port
  end

  rescue_from CanCan::AccessDenied do |exception|
    Rails.logger.debug "Access Denied: #{exception.message}"
    flash[:alert] = exception.message
    redirect_to root_url
  end

  def current_ability
    @current_ability ||= Ability.new(current_admin_user)
  end

  def current_user
    current_admin_user
  end

end
