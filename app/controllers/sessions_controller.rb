class SessionsController < ApplicationController
  
  #Login
  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.papel == 0
        redirect_to students_url, notice: "Logado!"
      elsif user.papel == 1
        redirect_to teachers_url, notice: "Logado!"
      elsif user.papel == 2
        redirect_to administrators_url, notice: "Logado!"
      end
    else
      flash.now.notice = "Username or password is invalid"
      render "new"
    end
  end

  #Logout
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged off!"
  end
  
  def new
  end
end
