class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  @@matricula_on = true
  

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user

  def authorize
    redirect_to login_url, alert: "Não Autorizado!" if current_user.nil?
  end

  def isAdmin
    redirect_to root_url if current_user.nil? or current_user.papel != 2
  end

  def isTeacher
    redirect_to root_url if current_user.nil? or current_user.papel != 1
  end
end