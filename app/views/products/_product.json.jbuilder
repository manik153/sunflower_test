json.extract! product, :id, :name, :quantity, :from_date, :to_date, :created_at, :updated_at
json.url product_url(product, format: :json)
