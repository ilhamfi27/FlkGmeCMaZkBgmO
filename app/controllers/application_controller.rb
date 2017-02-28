class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :user_has_signed_in
  
  # redirect after sign in method
  def after_sign_in_path_for(resource)
    sign_in_url = new_user_session_url
    if request.referer == sign_in_url
      officers_path
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end
  
  def user_has_signed_in
    if user_signed_in?
      redirect_to officers_path
    end
  end
end
