require 'test_helper'

class TiposColaboradorControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_colaborador = tipos_colaborador(:one)
  end

  test "should get index" do
    get tipos_colaborador_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_colaborador_url
    assert_response :success
  end

  test "should create tipo_colaborador" do
    assert_difference('TipoColaborador.count') do
      post tipos_colaborador_url, params: { tipo_colaborador: { descricao: @tipo_colaborador.descricao } }
    end

    assert_redirected_to tipo_colaborador_url(TipoColaborador.last)
  end

  test "should show tipo_colaborador" do
    get tipo_colaborador_url(@tipo_colaborador)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_colaborador_url(@tipo_colaborador)
    assert_response :success
  end

  test "should update tipo_colaborador" do
    patch tipo_colaborador_url(@tipo_colaborador), params: { tipo_colaborador: { descricao: @tipo_colaborador.descricao } }
    assert_redirected_to tipo_colaborador_url(@tipo_colaborador)
  end

  test "should destroy tipo_colaborador" do
    assert_difference('TipoColaborador.count', -1) do
      delete tipo_colaborador_url(@tipo_colaborador)
    end

    assert_redirected_to tipos_colaborador_url
  end
end
