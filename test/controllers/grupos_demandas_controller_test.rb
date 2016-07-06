require 'test_helper'

class GruposDemandasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_demandas = grupos_demandas(:one)
  end

  test "should get index" do
    get grupos_demandas_url
    assert_response :success
  end

  test "should get new" do
    get new_grupo_demandas_url
    assert_response :success
  end

  test "should create grupo_demandas" do
    assert_difference('GrupoDemandas.count') do
      post grupos_demandas_url, params: { grupo_demandas: { estado: @grupo_demandas.estado } }
    end

    assert_redirected_to grupo_demandas_url(GrupoDemandas.last)
  end

  test "should show grupo_demandas" do
    get grupo_demandas_url(@grupo_demandas)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_demandas_url(@grupo_demandas)
    assert_response :success
  end

  test "should update grupo_demandas" do
    patch grupo_demandas_url(@grupo_demandas), params: { grupo_demandas: { estado: @grupo_demandas.estado } }
    assert_redirected_to grupo_demandas_url(@grupo_demandas)
  end

  test "should destroy grupo_demandas" do
    assert_difference('GrupoDemandas.count', -1) do
      delete grupo_demandas_url(@grupo_demandas)
    end

    assert_redirected_to grupos_demandas_url
  end
end
