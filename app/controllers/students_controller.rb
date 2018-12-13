class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update, :destroy]
    before_action :authorize
    before_action :isAdmin, only: [:index, :show, :new, :edit, :create, :update, :destroy]

    # GET /students
    # GET /students.json
    def index
      @students = Student.all
    end
  
    # GET /students/1
    # GET /students/1.json
    def show
      begin
        @student = Student.find(params[:id])
      rescue StandardError
        redirect_to students_url, notice: "Estudante inexistente" 
      end
    end
  
    # GET /students/new
    def new
      @student = Student.new
    end
  
    # GET /students/1/edit
    def edit
      render :edit
    end
  
    # POST /students
    # POST /students.json
    def create
      @student = Student.new(student_params)
  
      begin
        respond_to do |format|
          if @student.save
            format.html { redirect_to new_student_user_url(@student) }
            #format.json { render :show, status: :created, location: @student }
          else
            format.html { render :new }
            format.json { render json: @student.errors, status: :unprocessable_entity }
          end
        end
      rescue StandardError
        redirect_to new_student_url(@student), notice: "Preencha todos os campos obrigatórios (*)"
      end
    end
  
    # PATCH/PUT /students/1
    # PATCH/PUT /students/1.json
    def update
      respond_to do |format|
        if @student.update(student_params)
          format.html { redirect_to @student, notice: 'Student was successfully updated.' }
          #format.json { render :show, status: :ok, location: @student }
        else
          format.html { render :edit }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /students/1
    # DELETE /students/1.json
    def destroy
      @student.destroy
      respond_to do |format|
        format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_student
        begin
          @student = Student.find(params[:id])
        rescue StandardError
          redirect_to students_url, notice: "Estudante inexistente" 
        end
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def student_params
        params.require(:student).permit(:name, :birth_date, :cpf, :phone, :cell_phone, :address, :city, 
        :state, :scholarship, :scholarship_need, :situation, :email, :username, 
        :password, :classe, :papel, :rg, :numero_matricula)
      end
end
