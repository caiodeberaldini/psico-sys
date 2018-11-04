class Teachers::UsersController < UsersController
    before_action :set_role

    def create
        super #Super permite que a ação herde a ação de UsersController 
        @user[:papel] = 1
        @role.save
    end

    private
        def set_role
            @role = Teacher.find(params[:teacher_id])
        end
    
end
