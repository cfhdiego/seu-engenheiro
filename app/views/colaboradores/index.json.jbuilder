json.array!(@colaboradores) do |colaborador|
  json.extract! colaborador, :id, :pessoa_id, :tipo_colaborador_id, :habilitado
  json.url colaborador_url(colaborador, format: :json)
end
