class CreateRegras < ActiveRecord::Migration[5.0]
  def change
    create_table :regras do |t|
      t.string :descricao
      t.string :codigo

      t.timestamps
    end
  end
end
