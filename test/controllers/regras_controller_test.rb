require 'test_helper'

class RegrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regra = regras(:one)
  end

  test "should get index" do
    get regras_url
    assert_response :success
  end

  test "should get new" do
    get new_regra_url
    assert_response :success
  end

  test "should create regra" do
    assert_difference('Regra.count') do
      post regras_url, params: { regra: { string: @regra.string, string: @regra.string } }
    end

    assert_redirected_to regra_url(Regra.last)
  end

  test "should show regra" do
    get regra_url(@regra)
    assert_response :success
  end

  test "should get edit" do
    get edit_regra_url(@regra)
    assert_response :success
  end

  test "should update regra" do
    patch regra_url(@regra), params: { regra: { string: @regra.string, string: @regra.string } }
    assert_redirected_to regra_url(@regra)
  end

  test "should destroy regra" do
    assert_difference('Regra.count', -1) do
      delete regra_url(@regra)
    end

    assert_redirected_to regras_url
  end
end
