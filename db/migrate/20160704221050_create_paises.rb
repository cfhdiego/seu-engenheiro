class CreatePaises < ActiveRecord::Migration[5.0]
  def change
    create_table :paises do |t|
    	t.string	:descricao
      t.timestamps
    end
      add_foreign_key :pessoas, :enderecos, column: :endereco_id

  end
end
