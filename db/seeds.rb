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
rest2 = Restaurant.create! name: "Hudsons", address: "69 Kloof Street, Gardens, Cape Town, 8001"
rest3 = Restaurant.create! name: "Jerry's", address: "123 Lower Main Rd, Observatory, Cape Town, 7925"
rest4 = Restaurant.create! name: "Ricks American Café", address: "2 Park Road, Gardens, Cape Town, 8001"
rest5 = Restaurant.create! name: "Nandos", address: "309 Main Rd Shop 9 & 10, Sea Point, Cape Town"
rest6 = Restaurant.create! name: "Myog", address: "50 Kloof St Gardens, Cape Town"
rest7 = Restaurant.create! name: "Vovo Telo", address: "60B Kloof St, Cape Town"
rest8 = Restaurant.create! name: "iX Food Truck", address: "south, 19 Park Road, Gardens, Cape Town, 8001"
pickup1 = Pickup.create title: "Pickup", description: "2 boxes of produce", start: "2015-06-02", restaurant_id: rest1.id
pickup2 = Pickup.create title: "Pickup", description: "2 boxes of bread", start: "2015-06-04", restaurant_id: rest2.id

pickup1.restaurant = rest1
pickup2.restaurant = rest2


