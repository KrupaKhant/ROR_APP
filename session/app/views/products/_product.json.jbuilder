json.extract! product, :id, :name, :price, :rating, :created_at, :updated_at
json.url product_url(product, format: :json)
