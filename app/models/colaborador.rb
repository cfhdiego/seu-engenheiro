class Colaborador < ApplicationRecord
	belongs_to :pessoa
	belongs_to :tipo_colaborador

	accepts_nested_attributes_for :pessoa

	validates_presence_of :tipo_colaborador_id

end
