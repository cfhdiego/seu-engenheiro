class AddFkEstadosPaisId < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :estados, :paises, column: :pais_id
    add_foreign_key :cidades, :estados, column: :estado_id
  end
end
