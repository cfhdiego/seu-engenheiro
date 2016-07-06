require 'test_helper'

class ColaboradoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colaborador = colaboradores(:one)
  end

  test "should get index" do
    get colaboradores_url
    assert_response :success
  end

  test "should get new" do
    get new_colaborador_url
    assert_response :success
  end

  test "should create colaborador" do
    assert_difference('Colaborador.count') do
      post colaboradores_url, params: { colaborador: { habilitado: @colaborador.habilitado, pessoa_id: @colaborador.pessoa_id, tipo_colaborador_id: @colaborador.tipo_colaborador_id } }
    end

    assert_redirected_to colaborador_url(Colaborador.last)
  end

  test "should show colaborador" do
    get colaborador_url(@colaborador)
    assert_response :success
  end

  test "should get edit" do
    get edit_colaborador_url(@colaborador)
    assert_response :success
  end

  test "should update colaborador" do
    patch colaborador_url(@colaborador), params: { colaborador: { habilitado: @colaborador.habilitado, pessoa_id: @colaborador.pessoa_id, tipo_colaborador_id: @colaborador.tipo_colaborador_id } }
    assert_redirected_to colaborador_url(@colaborador)
  end

  test "should destroy colaborador" do
    assert_difference('Colaborador.count', -1) do
      delete colaborador_url(@colaborador)
    end

    assert_redirected_to colaboradores_url
  end
end
