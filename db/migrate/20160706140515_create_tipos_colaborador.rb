class CreateTiposColaborador < ActiveRecord::Migration[5.0]
  def change
    create_table :tipos_colaborador do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
