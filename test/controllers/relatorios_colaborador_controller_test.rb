require 'test_helper'

class RelatoriosColaboradorControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relatorio_colaborador = relatorios_colaborador(:one)
  end

  test "should get index" do
    get relatorios_colaborador_url
    assert_response :success
  end

  test "should get new" do
    get new_relatorio_colaborador_url
    assert_response :success
  end

  test "should create relatorio_colaborador" do
    assert_difference('RelatorioColaborador.count') do
      post relatorios_colaborador_url, params: { relatorio_colaborador: { : @relatorio_colaborador., _id: @relatorio_colaborador._id, _id: @relatorio_colaborador._id, demanda_id: @relatorio_colaborador.demanda_id, demanda_id: @relatorio_colaborador.demanda_id, descricao: @relatorio_colaborador.descricao } }
    end

    assert_redirected_to relatorio_colaborador_url(RelatorioColaborador.last)
  end

  test "should show relatorio_colaborador" do
    get relatorio_colaborador_url(@relatorio_colaborador)
    assert_response :success
  end

  test "should get edit" do
    get edit_relatorio_colaborador_url(@relatorio_colaborador)
    assert_response :success
  end

  test "should update relatorio_colaborador" do
    patch relatorio_colaborador_url(@relatorio_colaborador), params: { relatorio_colaborador: { : @relatorio_colaborador., _id: @relatorio_colaborador._id, _id: @relatorio_colaborador._id, demanda_id: @relatorio_colaborador.demanda_id, demanda_id: @relatorio_colaborador.demanda_id, descricao: @relatorio_colaborador.descricao } }
    assert_redirected_to relatorio_colaborador_url(@relatorio_colaborador)
  end

  test "should destroy relatorio_colaborador" do
    assert_difference('RelatorioColaborador.count', -1) do
      delete relatorio_colaborador_url(@relatorio_colaborador)
    end

    assert_redirected_to relatorios_colaborador_url
  end
end
