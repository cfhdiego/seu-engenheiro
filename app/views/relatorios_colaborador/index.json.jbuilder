json.array!(@relatorios_colaborador) do |relatorio_colaborador|
  json.extract! relatorio_colaborador, :id, :descricao, :, :demanda_id, :_id, :demanda_id, :_id
  json.url relatorio_colaborador_url(relatorio_colaborador, format: :json)
end
