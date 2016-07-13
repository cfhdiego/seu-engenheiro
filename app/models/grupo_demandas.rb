class GrupoDemandas < ApplicationRecord
	has_many :demandas
	has_and_belongs_to_many :colaboradores

	ESTADO = [["Em Formação", 1], ["Completo", 2]]
end
