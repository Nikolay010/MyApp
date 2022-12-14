# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :configare_permitted_parameters, if: :devise_controller?

  protected

  def configare_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[email avatar])
  end
end
