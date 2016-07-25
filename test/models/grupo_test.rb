require 'test_helper'

class GrupoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "não devemos salvar grupo sem codigo" do
  	grupo = Grupo.new
  	assert_not grupo.save, "Salvando o grupo sem codigo"
  end

  test "não devemos salvar grupo sem demanda" do
  	grupo = Grupo.new(:codigo => "Teste")
  	assert_not grupo.save, "Salvando o grupo sem descricao"
  end

  test "verificando uma regra associada ao grupo" do
  	grupo = Grupo.new 
  	regra = mock("regra")
  	regra2 = mock("regra")
  	grupo.expects(:regras).returns([regra, regra2])
  	regra.expects(:find).with(1).returns(regra)

  	assert_not_includes grupo.regras, regra.find(1), "A Regra Pertence ao Grupo"
  end
end
