# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.delete_all
Pickup.delete_all

rest1 = Restaurant.create! name: "Yours Truly", address: "74 Kloof St, Cape Town, 8001"
pickup1 = Pickup.create title: "Test 1", description: "2 boxes of produce", start: "2015-06-02", restaurant_id: rest1.id

pickup1.restaurant = rest1
