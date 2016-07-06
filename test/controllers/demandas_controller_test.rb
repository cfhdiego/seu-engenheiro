require 'test_helper'

class DemandasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demanda = demandas(:one)
  end

  test "should get index" do
    get demandas_url
    assert_response :success
  end

  test "should get new" do
    get new_demanda_url
    assert_response :success
  end

  test "should create demanda" do
    assert_difference('Demanda.count') do
      post demandas_url, params: { demanda: { data_fim: @demanda.data_fim, descricao: @demanda.descricao, endereco_id: @demanda.endereco_id, estado: @demanda.estado, pessoa_id: @demanda.pessoa_id } }
    end

    assert_redirected_to demanda_url(Demanda.last)
  end

  test "should show demanda" do
    get demanda_url(@demanda)
    assert_response :success
  end

  test "should get edit" do
    get edit_demanda_url(@demanda)
    assert_response :success
  end

  test "should update demanda" do
    patch demanda_url(@demanda), params: { demanda: { data_fim: @demanda.data_fim, descricao: @demanda.descricao, endereco_id: @demanda.endereco_id, estado: @demanda.estado, pessoa_id: @demanda.pessoa_id } }
    assert_redirected_to demanda_url(@demanda)
  end

  test "should destroy demanda" do
    assert_difference('Demanda.count', -1) do
      delete demanda_url(@demanda)
    end

    assert_redirected_to demandas_url
  end
end
