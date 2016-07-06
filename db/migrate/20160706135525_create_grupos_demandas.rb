class CreateGruposDemandas < ActiveRecord::Migration[5.0]
  def change
    create_table :grupos_demandas do |t|
      t.integer :estado

      t.timestamps
    end
    
    add_column :demandas, :grupo_demandas_id, :integer

  end
end
