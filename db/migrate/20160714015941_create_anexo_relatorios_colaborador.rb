class CreateAnexoRelatoriosColaborador < ActiveRecord::Migration[5.0]
  def change
    create_table :anexo_relatorios_colaborador do |t|
      t.string :path
      t.belongs_to :relatorio_colaborador, foreign_key: true

      t.timestamps
    end
  end
end
