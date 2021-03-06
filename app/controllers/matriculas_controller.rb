class MatriculasController < ApplicationController
	before_action :isAdmin, only: [:index]
  
	# GET /matriculas
    # GET /matriculas.json
    def index
      @matricula_on = MatriculasController.class_variable_get(:@@matricula_on)
    end
  
    # GET /matriculas/1
    # GET /matriculas/1.json
    #def show
	#	@matricula = Matricula.find(params[:id])
    #end
  
    # GET /matriculas/new
    def new
      @matricula_on = MatriculasController.class_variable_get(:@@matricula_on)
      @matricula = Matricula.new
    end
  
    # GET /matriculas/1/edit
    #def edit
    #  render :edit
    #end
  
    # POST /matriculas
    # POST /matriculas.json
    def create
      @matricula = Matricula.new(matricula_params)
  
      respond_to do |format|
        if @matricula.save
          AdminMailer.nova_matricula(@matricula).deliver
          format.html { redirect_to '/home' }
		  @matricula.destroy
          #format.json { render :show, status: :created, location: @Matricula }
        else
          format.html { render :new }
          format.json { render json: @matricula.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /matriculas/1
    # PATCH/PUT /matriculas/1.json
    #def update
    #  respond_to do |format|
    #    if @matricula.update(Matricula_params)
    #      format.html { redirect_to @Matricula, notice: 'Matricula was successfully updated.' }
    #      #format.json { render :show, status: :ok, location: @Matricula }
    #    else
    #      format.html { render :edit }
    #      format.json { render json: @Matricula.errors, status: :unprocessable_entity }
    #    end
    #  end
    #end
  
    # DELETE /matriculas/1
    # DELETE /matriculas/1.json
    def destroy
	  @matricula=Matricula.find(params[:id])
      @matricula.destroy
      respond_to do |format|
        format.html { redirect_to matriculas_url, notice: 'Matricula was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_matricula
        @matricula = Matricula.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def matricula_params
        params.require(:matricula).permit(:name, :birth_date, :cpf, :phone, :cell_phone, :address, :city, 
        :state, :scholarship_need, :email, :classe, :rg, :lugar_escolaridade, :escolaridade, :ano_escolaridade,
        :custo_transporte, :tempo_transporte, :acesso_internet, :declaracao_cor, :declaracao_sexo, :declaracao_trans,
        :egresso, :refugiado)
      end
end
