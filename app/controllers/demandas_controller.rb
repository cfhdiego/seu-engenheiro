class DemandasController < ApplicationController
  before_action :set_demanda, only: [:show, :edit, :update, :destroy]
  before_action :authorize
  # GET /demandas
  # GET /demandas.json
  def index
    @demandas = Demanda.all
  end

  # GET /demandas/1
  # GET /demandas/1.json
  def show
  end

  # GET /demandas/new
  def new
    @demanda = Demanda.new(:estado => Demanda::EM_ABERTO)
  end

  # GET /demandas/1/edit
  def edit
  end

  def relatorio
    @relatorio = RelatorioColaborador.new(:demanda_id => @demanda)
  end

  # POST /demandas
  # POST /demandas.json
  def create
    @demanda = Demanda.new(demanda_params)

    respond_to do |format|
      if @demanda.save
        format.html { redirect_to @demanda, notice: 'Demanda was successfully created.' }
        format.json { render :show, status: :created, location: @demanda }
      else
        format.html { render :new }
        format.json { render json: @demanda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demandas/1
  # PATCH/PUT /demandas/1.json
  def update
    respond_to do |format|
      if @demanda.update(demanda_params)
        format.html { redirect_to @demanda, notice: 'Demanda was successfully updated.' }
        format.json { render :show, status: :ok, location: @demanda }
      else
        format.html { render :edit }
        format.json { render json: @demanda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demandas/1
  # DELETE /demandas/1.json
  def destroy
    @demanda.destroy
    respond_to do |format|
      format.html { redirect_to demandas_url, notice: 'Demanda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demanda
      @demanda = Demanda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demanda_params
      params.require(:demanda).permit(:pessoa_id, :endereco_id, :estado, :data_fim, :descricao, endereco_attributes: [:id, :cidade_id, :logradouro, :complemento, :cep, :numero])
    end
end
