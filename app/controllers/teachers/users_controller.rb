class Teachers::UsersController < UsersController
    before_action :set_role

    def create
        super #Super permite que a ação herde a ação de UsersController 
        @user[:papel] = 1
        respond_to do |format|
            if @user.save
              format.html { redirect_to @role, notice: 'Usuário registrado com sucesso!' }
              format.json { render :show, status: :created, location: @role }
            else
              format.html { render :new }
              format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end

        @role.save
    end

    private
        def set_role
            @role = Teacher.find(params[:teacher_id])
        end
    
end
