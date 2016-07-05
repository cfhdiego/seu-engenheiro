class CreateEstados < ActiveRecord::Migration[5.0]
  def change
    create_table :estados do |t|
    	t.string	:nome, :limit => 20
    	t.integer	:pais_id
    	t.string	:sigla, :limit => 2


      t.timestamps
    end
  end
end
