json.array!(@restaurants) do |restaurant|
	json.array!(restaurant.pickups) do |pickup|
		json.extract! pickup, :id, :title, :description
		json.start pickup.start
		json.end pickup.end
		json.url pickup_url(restaurant_pickup, format: :html)
	end
end