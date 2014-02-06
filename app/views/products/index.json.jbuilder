json.array!(@products) do |product|
  json.extract! product, :id, :name, :image, :prise, :desciption
  json.url product_url(product, format: :json)
end
