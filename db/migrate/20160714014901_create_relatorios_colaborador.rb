class CreateRelatoriosColaborador < ActiveRecord::Migration[5.0]
  def change
    create_table :relatorios_colaborador do |t|
      t.string :descricao
      t.belongs_to :demanda, foreign_key: true
      t.belongs_to :colaborador, foreign_key: true

      t.timestamps
    end
  end
end
