class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
# call parameters
before_action :configure_permitted_parameters, if: :devise_controller?

#protect the db while allowing thus fill to  update

protected
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up){|u|u.permit(:username, :email, :password, :password_confirmation, :remember_me)}
  devise_parameter_sanitizer.permit(:sign_in){|u|u.permit(:username, :email, :password, :password_confirmation, :remember_me)}
  devise_parameter_sanitizer.permit(:account_update){|u|u.permit(:email, :password, :password_confirmation, :remember_me)}
end

end

