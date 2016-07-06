class TiposColaboradorController < ApplicationController
  before_action :set_tipo_colaborador, only: [:show, :edit, :update, :destroy]

  # GET /tipos_colaborador
  # GET /tipos_colaborador.json
  def index
    @tipos_colaborador = TipoColaborador.all
  end

  # GET /tipos_colaborador/1
  # GET /tipos_colaborador/1.json
  def show
  end

  # GET /tipos_colaborador/new
  def new
    @tipo_colaborador = TipoColaborador.new
  end

  # GET /tipos_colaborador/1/edit
  def edit
  end

  # POST /tipos_colaborador
  # POST /tipos_colaborador.json
  def create
    @tipo_colaborador = TipoColaborador.new(tipo_colaborador_params)

    respond_to do |format|
      if @tipo_colaborador.save
        format.html { redirect_to @tipo_colaborador, notice: 'Tipo colaborador was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_colaborador }
      else
        format.html { render :new }
        format.json { render json: @tipo_colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_colaborador/1
  # PATCH/PUT /tipos_colaborador/1.json
  def update
    respond_to do |format|
      if @tipo_colaborador.update(tipo_colaborador_params)
        format.html { redirect_to @tipo_colaborador, notice: 'Tipo colaborador was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_colaborador }
      else
        format.html { render :edit }
        format.json { render json: @tipo_colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_colaborador/1
  # DELETE /tipos_colaborador/1.json
  def destroy
    @tipo_colaborador.destroy
    respond_to do |format|
      format.html { redirect_to tipos_colaborador_url, notice: 'Tipo colaborador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_colaborador
      @tipo_colaborador = TipoColaborador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_colaborador_params
      params.require(:tipo_colaborador).permit(:descricao)
    end
end
