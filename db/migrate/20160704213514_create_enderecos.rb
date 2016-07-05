class CreateEnderecos < ActiveRecord::Migration[5.0]
  def change
    create_table :enderecos do |t|
    	t.integer 		:cidade_id
    	t.string		:numero
    	t.string		:logradouro
    	t.string		:complemento
    	t.string		:cep
    	t.integer		:tipo_localidade_id

      t.timestamps

    end
  end
end
