class Grupo < ApplicationRecord
	validates :codigo, presence: true
	validates :descricao, presence: true

	#has_and_belongs_to_many :regras


end
