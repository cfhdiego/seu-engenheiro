json.array!(@anexo_relatorios_colaborador) do |anexo_relatorio_colaborador|
  json.extract! anexo_relatorio_colaborador, :id, :path, :relatorio_colaborador_id
  json.url anexo_relatorio_colaborador_url(anexo_relatorio_colaborador, format: :json)
end
