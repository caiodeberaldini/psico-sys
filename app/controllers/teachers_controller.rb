class TeachersController < ApplicationController
    before_action :set_teacher, only: [:show, :edit, :update, :destroy]
    before_action :authorize
    before_action :isAdmin, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  # GET /teachers
  # GET /teachers.json
  def index
    @teachers = Teacher.all
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
    begin
      @teacher = Teacher.find(params[:id])
    rescue StandardError
      redirect_to teachers_url, notice: "Professor inexistente" 
    end
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
  end

  # GET /teachers/1/edit
  def edit
    render :edit
  end

  # POST /teachers
  # POST /teachers.json
  def create
    @teacher = Teacher.new(teacher_params)

    begin
      respond_to do |format|
        if @teacher.save
          format.html { redirect_to new_teacher_user_url(@teacher) }
          #format.json { render :show, status: :created, location: @teacher }
        else
          format.html { render :new }
          format.json { render json: @teacher.errors, status: :unprocessable_entity }
        end
      end
    rescue StandardError
      redirect_to new_teacher_url(@teacher), notice: "Preencha todos os campos obrigatórios (*)"
    end

  end

  # PATCH/PUT /teachers/1
  # PATCH/PUT /teachers/1.json
  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.json
  def destroy
    @teacher.destroy
    respond_to do |format|
      format.html { redirect_to teachers_url, notice: 'Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      begin
        @teacher = Teacher.find(params[:id])
      rescue StandardError
        redirect_to teachers_url, notice: "Professor inexistente" 
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_params
      params.require(:teacher).permit(:name, :birth_date, :cpf, :address, :city, :state,
      :phone, :cell_phone, :disciplina ,:email)
    end
end
