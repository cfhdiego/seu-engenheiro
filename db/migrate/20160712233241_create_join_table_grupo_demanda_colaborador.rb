class CreateJoinTableGrupoDemandaColaborador < ActiveRecord::Migration[5.0]
  def change
    create_join_table :grupos_demandas, :colaboradores do |t|
      # t.index [:grupo_demanda_id, :colaborador_id]
      # t.index [:colaborador_id, :grupo_demanda_id]
    end
  end
end
