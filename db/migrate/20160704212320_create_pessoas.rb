class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
    	t.string 	:nome
    	t.string 	:cpf
    	t.string 	:rg
    	t.date	 	:data_nascimento
    	t.string 	:email
    	t.string 	:telefone
    	t.string 	:celular
    	t.integer	:endereco_id

      t.timestamps
    end
  end
end
