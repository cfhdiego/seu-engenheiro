class CreateJoinTableGrupoRegra < ActiveRecord::Migration[5.0]
  def change
    create_join_table :grupos, :regras do |t|
       t.index [:grupo_id, :regra_id]
       t.index [:regra_id, :grupo_id]
    end
  end
end
