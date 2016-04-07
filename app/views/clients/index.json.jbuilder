json.array!(@clients) do |client|
  json.extract! client, :id, :firstname, :lastname, :description, :email, :phone
  json.url client_url(client, format: :json)
end
