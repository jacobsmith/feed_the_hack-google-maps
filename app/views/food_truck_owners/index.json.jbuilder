json.array!(@food_truck_owners) do |food_truck_owner|
  json.extract! food_truck_owner, :id, :lat, :long, :name
  json.url food_truck_owner_url(food_truck_owner, format: :json)
end
