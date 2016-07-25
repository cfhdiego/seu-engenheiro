class AnexoRelatoriosColaboradorController < ApplicationController
  before_action :set_anexo_relatorio_colaborador, only: [:show, :edit, :update, :destroy]

  # GET /anexo_relatorios_colaborador
  # GET /anexo_relatorios_colaborador.json
  def index
    @anexo_relatorios_colaborador = AnexoRelatorioColaborador.all
  end

  # GET /anexo_relatorios_colaborador/1
  # GET /anexo_relatorios_colaborador/1.json
  def show
  end

  # GET /anexo_relatorios_colaborador/new
  def new
    @anexo_relatorio_colaborador = AnexoRelatorioColaborador.new
  end

  # GET /anexo_relatorios_colaborador/1/edit
  def edit
  end

  # POST /anexo_relatorios_colaborador
  # POST /anexo_relatorios_colaborador.json
  def create
    @anexo_relatorio_colaborador = AnexoRelatorioColaborador.new(anexo_relatorio_colaborador_params)

    respond_to do |format|
      if @anexo_relatorio_colaborador.save
        format.html { redirect_to @anexo_relatorio_colaborador, notice: 'Anexo relatorio colaborador was successfully created.' }
        format.json { render :show, status: :created, location: @anexo_relatorio_colaborador }
      else
        format.html { render :new }
        format.json { render json: @anexo_relatorio_colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anexo_relatorios_colaborador/1
  # PATCH/PUT /anexo_relatorios_colaborador/1.json
  def update
    respond_to do |format|
      if @anexo_relatorio_colaborador.update(anexo_relatorio_colaborador_params)
        format.html { redirect_to @anexo_relatorio_colaborador, notice: 'Anexo relatorio colaborador was successfully updated.' }
        format.json { render :show, status: :ok, location: @anexo_relatorio_colaborador }
      else
        format.html { render :edit }
        format.json { render json: @anexo_relatorio_colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anexo_relatorios_colaborador/1
  # DELETE /anexo_relatorios_colaborador/1.json
  def destroy
    @anexo_relatorio_colaborador.destroy
    respond_to do |format|
      format.html { redirect_to anexo_relatorios_colaborador_url, notice: 'Anexo relatorio colaborador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anexo_relatorio_colaborador
      @anexo_relatorio_colaborador = AnexoRelatorioColaborador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anexo_relatorio_colaborador_params
      params.require(:anexo_relatorio_colaborador).permit(:path, :relatorio_colaborador_id)
    end
end
