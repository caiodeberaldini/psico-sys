class AdministratorsController < ApplicationController
    before_action :set_administrator, only: [:show, :edit, :update, :destroy]
    before_action :authorize
    before_action :isAdmin, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  # GET /administrators
  # GET /administrators.json
  def index
    @administrators = Administrator.all
  end

  # GET /administrators/1
  # GET /administrators/1.json
  def show
    @administrator = Administrator.find(params[:id])
  end

  # GET /administrators/new
  def new
    @administrator = Administrator.new
  end

  # GET /administrators/1/edit
  def edit
    render :edit
  end

  # POST /administrators
  # POST /administrators.json
  def create
    @administrator = Administrator.new(administrator_params)

    respond_to do |format|
      if @administrator.save
        format.html { redirect_to new_administrator_user_url(@administrator) }
        #format.json { render :show, status: :created, location: @administrator }
      else
        format.html { render :new }
        format.json { render json: @administrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administrators/1
  # PATCH/PUT /administrators/1.json
  def update
    respond_to do |format|
      if @administrator.update(administrator_params)
        format.html { redirect_to @administrator, notice: 'Administrator was successfully updated.' }
        #format.json { render :show, status: :ok, location: @administrator }
      else
        format.html { render :edit }
        format.json { render json: @administrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrators/1
  # DELETE /administrators/1.json
  def destroy
    if @administrator != @current_user.role
      @administrator.destroy
      respond_to do |format|
        format.html { redirect_to administrators_url, notice: 'Administrator was successfully destroyed.' }
        format.json { head :no_content }
      end
    else 
      redirect_to @administrator, notice: 'Não é possível apagar você mesmo!'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrator
      @administrator = Administrator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrator_params
      params.require(:administrator).permit(:email, :username, :password, 
      :papel, :password_confirmation)
    end
end
