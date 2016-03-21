class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  helper_method :mailbox

  private

  def mailbox
    @mailbox || current_user.mailbox
  end

  protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :names, :email, :password, :is_admin, :is_mua, :is_contributor, :is_model, :is_photographer) }
        devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :names, :email, :password, :current_password, :avatar) }
    end
end
