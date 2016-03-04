class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #before_action :authenticate_user!
  #before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:username, :email)
    end
  end


  #def sign_out(*args)
    #to invalidate session on sign out
    #current_user.update_attribute(:unique_session_id, "") unless current_user.nil?
    #current_admin_user.update_attribute(:unique_session_id, "") unless current_admin_user.nil?   
    #super
  #end

  #def current_user
    ##user.where(id: session[:user_id]).first
  #end
  #helper_method :current_user  
end
    
