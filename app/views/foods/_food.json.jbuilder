json.extract! food, :id, :price, :quantity, :name, :description, :created_at, :updated_at
json.url food_url(food, format: :json)
