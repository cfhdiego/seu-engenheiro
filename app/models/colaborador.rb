class Colaborador < ApplicationRecord
	belongs_to :pessoa
	belongs_to :tipo_colaborador
	has_and_belongs_to_many :grupos_demandas

	delegate :nome, to: :pessoa
	accepts_nested_attributes_for :pessoa

	validates_presence_of :tipo_colaborador_id

end
