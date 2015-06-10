class AddRestaurantToPickup < ActiveRecord::Migration
  def change
    add_reference :pickups, :restaurant, index: true, foreign_key: true
  end
end
