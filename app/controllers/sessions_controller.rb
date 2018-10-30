class SessionsController < ApplicationController
  
  #Login
  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logado!"
    else
      flash.now.notice = "Username or password is invalid"
      render "new"
    end
  end

  #Logout
  def destroy
  end
  
  def new
  end
end
