class CreateColaboradores < ActiveRecord::Migration[5.0]
  def change
    create_table :colaboradores do |t|
      t.integer :pessoa_id
      t.integer :tipo_colaborador_id
      t.boolean :habilitado

      t.timestamps
    end
  end
end
