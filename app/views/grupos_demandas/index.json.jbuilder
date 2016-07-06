json.array!(@grupos_demandas) do |grupo_demandas|
  json.extract! grupo_demandas, :id, :estado
  json.url grupo_demandas_url(grupo_demandas, format: :json)
end
