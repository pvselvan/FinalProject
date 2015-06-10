class AddTitleToPickup < ActiveRecord::Migration
  def change
    add_column :pickups, :title, :string
  end
end
