class CreateCidades < ActiveRecord::Migration[5.0]
  def change
    create_table :cidades do |t|
    	t.integer	:estado_id
    	t.string	:tipo_localidade
    	t.string	:municipio
    	t.string	:localidade
    	t.string	:codigo

      t.timestamps
    end
    add_foreign_key  :enderecos, :cidades, column: :cidade_id
  end
end
