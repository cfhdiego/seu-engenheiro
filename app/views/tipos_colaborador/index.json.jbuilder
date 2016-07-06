json.array!(@tipos_colaborador) do |tipo_colaborador|
  json.extract! tipo_colaborador, :id, :descricao
  json.url tipo_colaborador_url(tipo_colaborador, format: :json)
end
