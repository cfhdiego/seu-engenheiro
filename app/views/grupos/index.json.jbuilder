json.array!(@grupos) do |grupo|
  json.extract! grupo, :id, :string, :string
  json.url grupo_url(grupo, format: :json)
end
