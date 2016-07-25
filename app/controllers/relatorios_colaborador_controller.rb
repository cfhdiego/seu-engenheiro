class RelatoriosColaboradorController < ApplicationController
  before_action :set_relatorio_colaborador, only: [:show, :edit, :update, :destroy]

  # GET /relatorios_colaborador
  # GET /relatorios_colaborador.json
  def index
    @relatorios_colaborador = RelatorioColaborador.all
  end

  # GET /relatorios_colaborador/1
  # GET /relatorios_colaborador/1.json
  def show
  end

  # GET /relatorios_colaborador/new
  def new
    @relatorio_colaborador = RelatorioColaborador.new
  end

  # GET /relatorios_colaborador/1/edit
  def edit
  end

  # POST /relatorios_colaborador
  # POST /relatorios_colaborador.json
  def create
    @relatorio_colaborador = RelatorioColaborador.new(relatorio_colaborador_params)

    respond_to do |format|
      if @relatorio_colaborador.save
        format.html { redirect_to @relatorio_colaborador, notice: 'Relatorio colaborador was successfully created.' }
        format.json { render :show, status: :created, location: @relatorio_colaborador }
      else
        format.html { render :new }
        format.json { render json: @relatorio_colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatorios_colaborador/1
  # PATCH/PUT /relatorios_colaborador/1.json
  def update
    respond_to do |format|
      if @relatorio_colaborador.update(relatorio_colaborador_params)
        format.html { redirect_to @relatorio_colaborador, notice: 'Relatorio colaborador was successfully updated.' }
        format.json { render :show, status: :ok, location: @relatorio_colaborador }
      else
        format.html { render :edit }
        format.json { render json: @relatorio_colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatorios_colaborador/1
  # DELETE /relatorios_colaborador/1.json
  def destroy
    @relatorio_colaborador.destroy
    respond_to do |format|
      format.html { redirect_to relatorios_colaborador_url, notice: 'Relatorio colaborador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorio_colaborador
      @relatorio_colaborador = RelatorioColaborador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relatorio_colaborador_params
      params.require(:relatorio_colaborador).permit(:descricao,:demanda_id, :colaborador_id)
    end
end
