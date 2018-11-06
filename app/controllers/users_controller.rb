class UsersController < ApplicationController    
    def new
        @user = @role.users.new
    end

    def create
        @user = @role.users.new(user_params)

        #if @role.errors.any?
        #    redirect_to @role, notice: "Usuário registrado com sucesso!"
        #end

        respond_to do |format|
            if @user.save
              format.html { redirect_to @role, notice: 'Usuário registrado com sucesso!' }
              format.json { render :show, status: :created, location: @role }
            else
              format.html { render :new }
              format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    private
        def user_params
            params.require(:user).permit(:username, :password)
        end
end
