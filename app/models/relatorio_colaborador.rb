class RelatorioColaborador < ApplicationRecord
  belongs_to :colaborador
  belongs_to :demanda
end
