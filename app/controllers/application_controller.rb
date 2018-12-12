class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  @@matricula_on = false
  

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
#request.original_url

#colocar verificação para ver se o professor é da disciplina da página que ele ta acessando
#fzer combo box para o campo "disciplina" dos professores, para poder fazer a verificação. No combo
#tem que estar escrito que nem no url

#and ""current_user.role.disciplina != ""