class CreateDemandas < ActiveRecord::Migration[5.0]
  def change
    create_table :demandas do |t|
      t.integer :pessoa_id
      t.integer :endereco_id
      t.integer :estado
      t.datetime :data_fim
      t.string :descricao

      t.timestamps
    end
    add_foreign_key :demandas, :pessoas, column: :pessoa_id
    add_foreign_key :demandas, :enderecos, column: :endereco_id
  end
end
