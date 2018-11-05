class SessionsController < ActionController::Base
  
  #Login
  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Usuário logado com sucesso!"
    else
      flash.now.notice = "Username or password is invalid"
      render "new"
    end
  end

  #Logout
  def destroy
    session[:user_id] = nil
    redirect_to home_url, notice: "Logged off!"
  end
  
  def new
  end
end
