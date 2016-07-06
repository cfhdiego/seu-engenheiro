class GruposDemandasController < ApplicationController
  before_action :set_grupo_demandas, only: [:show, :edit, :update, :destroy]

  # GET /grupos_demandas
  # GET /grupos_demandas.json
  def index
    @grupos_demandas = GrupoDemandas.all
  end

  # GET /grupos_demandas/1
  # GET /grupos_demandas/1.json
  def show
  end

  # GET /grupos_demandas/new
  def new
    @grupo_demandas = GrupoDemandas.new
  end

  # GET /grupos_demandas/1/edit
  def edit
  end

  # POST /grupos_demandas
  # POST /grupos_demandas.json
  def create
    @grupo_demandas = GrupoDemandas.new(grupo_demandas_params)

    respond_to do |format|
      if @grupo_demandas.save
        format.html { redirect_to @grupo_demandas, notice: 'Grupo demandas was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_demandas }
      else
        format.html { render :new }
        format.json { render json: @grupo_demandas.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupos_demandas/1
  # PATCH/PUT /grupos_demandas/1.json
  def update
    respond_to do |format|
      if @grupo_demandas.update(grupo_demandas_params)
        format.html { redirect_to @grupo_demandas, notice: 'Grupo demandas was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_demandas }
      else
        format.html { render :edit }
        format.json { render json: @grupo_demandas.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupos_demandas/1
  # DELETE /grupos_demandas/1.json
  def destroy
    @grupo_demandas.destroy
    respond_to do |format|
      format.html { redirect_to grupos_demandas_url, notice: 'Grupo demandas was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_demandas
      @grupo_demandas = GrupoDemandas.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_demandas_params
      params.require(:grupo_demandas).permit(:estado)
    end
end
