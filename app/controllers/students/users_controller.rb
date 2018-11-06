class Students::UsersController < UsersController
    before_action :set_role

    def create
        super #Super permite que a ação herde a ação de UsersController
        @user[:papel] = 0
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
            @role = Student.find(params[:student_id])
        end
end
