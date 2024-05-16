class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  
    helper_method :current_user
  
    def current_user
      # Implement your logic here to retrieve the current user
      # For example, if you have a User model and you're using sessions for authentication:
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  end
  