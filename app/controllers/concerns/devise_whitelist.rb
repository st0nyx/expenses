module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
    before_action :permitted_params, if: :devise_controller?
  end

  def permitted_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :admin])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :admin])
  end
end