json.array!(@dealers) do |dealer|
  json.extract! dealer, :id, :name, :email, :company, :website, :phone
  json.url dealer_url(dealer, format: :json)
end
