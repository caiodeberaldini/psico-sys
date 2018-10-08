class ApostillesController < ApplicationController
  before_action :set_apostille, only: [:show, :edit, :update, :destroy]

  # GET /apostilles
  # GET /apostilles.json
  def index
    @apostilles = Apostille.all
  end

  # GET /apostilles/1
  # GET /apostilles/1.json
  def show
  end

  # GET /apostilles/new
  def new
    @apostille = Apostille.new
  end

  # GET /apostilles/1/edit
  def edit
  end

  # POST /apostilles
  # POST /apostilles.json
  def create
    @apostille = Apostille.new(apostille_params)

    respond_to do |format|
      if @apostille.save
        format.html { redirect_to @apostille, notice: 'Apostille was successfully created.' }
        format.json { render :show, status: :created, location: @apostille }
      else
        format.html { render :new }
        format.json { render json: @apostille.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apostilles/1
  # PATCH/PUT /apostilles/1.json
  def update
    respond_to do |format|
      if @apostille.update(apostille_params)
        format.html { redirect_to @apostille, notice: 'Apostille was successfully updated.' }
        format.json { render :show, status: :ok, location: @apostille }
      else
        format.html { render :edit }
        format.json { render json: @apostille.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apostilles/1
  # DELETE /apostilles/1.json
  def destroy
    @apostille.destroy
    respond_to do |format|
      format.html { redirect_to apostilles_url, notice: 'Apostille was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apostille
      @apostille = Apostille.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apostille_params
      params.require(:apostille).permit(:description)
    end
end
