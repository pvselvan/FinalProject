json.array!(@pickups) do |pickup|
	json.extract! pickup, :id, :title, :description, :restaurant_id, :completed
	json.start pickup.start
	json.end pickup.end
	json.url pickup_url(pickup, format: :html)
end