class UsersController < ApplicationController    
    def new
        @user = @role.users.new
    end

    def create
        @user = @role.users.new(user_params)
        redirect_to @role, notice: "Usuário registrado com sucesso!"
    end

    private
        def user_params
            params.require(:user).permit(:username, :password)
        end
end
