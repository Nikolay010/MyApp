class ApplicationController < ActionController::Base
  before_action :configare_permitted_parameters, if: :devise_controller?

  protected

  def configare_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :avatar])
  end
end
