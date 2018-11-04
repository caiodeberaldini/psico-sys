class Students::UsersController < UsersController
    before_action :set_role

    def create
        super #Super permite que a ação herde a ação de UsersController
        @user[:papel] = 0
        @role.save
    end

    private
        def set_role
            @role = Student.find(params[:student_id])
        end
end
