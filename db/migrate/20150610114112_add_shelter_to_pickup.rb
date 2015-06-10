class AddShelterToPickup < ActiveRecord::Migration
  def change
    add_reference :pickups, :shelter, index: true, foreign_key: true
  end
end
