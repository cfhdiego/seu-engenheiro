class Demanda < ApplicationRecord
	belongs_to :pessoa
	belongs_to :endereco
	
	accepts_nested_attributes_for :endereco

	validates_presence_of :pessoa_id, :descricao

	ESTADOS = [["Em Aberto", 1], ["Aguardando Grupo", 2], ["Em Andamento", 3], ["Finalizado", 4]]

	EM_ABERTO = 1
	AGUARDANDO_GRUPO = 2
	EM_ANDAMENTO = 3
	FINALIZADO = 4

	def codigo
		self.id.to_s + ' ' + self.pessoa.nome
	end
end
