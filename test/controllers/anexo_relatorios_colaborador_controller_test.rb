require 'test_helper'

class AnexoRelatoriosColaboradorControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anexo_relatorio_colaborador = anexo_relatorios_colaborador(:one)
  end

  test "should get index" do
    get anexo_relatorios_colaborador_url
    assert_response :success
  end

  test "should get new" do
    get new_anexo_relatorio_colaborador_url
    assert_response :success
  end

  test "should create anexo_relatorio_colaborador" do
    assert_difference('AnexoRelatorioColaborador.count') do
      post anexo_relatorios_colaborador_url, params: { anexo_relatorio_colaborador: { path: @anexo_relatorio_colaborador.path, relatorio_colaborador_id: @anexo_relatorio_colaborador.relatorio_colaborador_id } }
    end

    assert_redirected_to anexo_relatorio_colaborador_url(AnexoRelatorioColaborador.last)
  end

  test "should show anexo_relatorio_colaborador" do
    get anexo_relatorio_colaborador_url(@anexo_relatorio_colaborador)
    assert_response :success
  end

  test "should get edit" do
    get edit_anexo_relatorio_colaborador_url(@anexo_relatorio_colaborador)
    assert_response :success
  end

  test "should update anexo_relatorio_colaborador" do
    patch anexo_relatorio_colaborador_url(@anexo_relatorio_colaborador), params: { anexo_relatorio_colaborador: { path: @anexo_relatorio_colaborador.path, relatorio_colaborador_id: @anexo_relatorio_colaborador.relatorio_colaborador_id } }
    assert_redirected_to anexo_relatorio_colaborador_url(@anexo_relatorio_colaborador)
  end

  test "should destroy anexo_relatorio_colaborador" do
    assert_difference('AnexoRelatorioColaborador.count', -1) do
      delete anexo_relatorio_colaborador_url(@anexo_relatorio_colaborador)
    end

    assert_redirected_to anexo_relatorios_colaborador_url
  end
end
