class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.text :description
      t.datetime :start
      t.datetime :end
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
