json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :pessoa_id, :login, :password_digest
  json.url usuario_url(usuario, format: :json)
end
