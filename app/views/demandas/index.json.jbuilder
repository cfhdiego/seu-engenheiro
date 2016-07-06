json.array!(@demandas) do |demanda|
  json.extract! demanda, :id, :pessoa_id, :endereco_id, :estado, :data_fim, :descricao
  json.url demanda_url(demanda, format: :json)
end
