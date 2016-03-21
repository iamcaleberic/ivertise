class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD
    before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :names, :email, :password, :password_confirmation, :remember_me) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :skills,:names, :avatar, :email, :password, :phone ,:location,:password_confirmation, :current_password) }
    end

=======
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:names, :email, :password, :is_admin, :is_mua, :is_contributor, :is_model, :is_photographer) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:names, :email, :password, :current_password, :avatar) }
    end
>>>>>>> f315628a197f98f8ecb106cb3b6cef5c0038e1b5
end
