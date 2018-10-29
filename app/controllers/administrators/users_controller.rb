class Administrators::UsersController < UsersController
    before_action :set_role

    def create
        super #Super permite que a ação herde a ação de UsersController
        @user[:papel] = 2
        @role.save
    end

    private
        def set_role
            @role = Administrator.find(params[:administrator_id])
        end
end
