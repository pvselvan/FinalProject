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

pickup1 = Pickup.create title: "Yours Truly Pickup", description: "2 boxes of produce", start: "2015-06-02", restaurant_id: rest1.id, completed: false
pickup2 = Pickup.create title: "Yours Truly Pickup", description: "2 boxes of bread", start: "2015-06-04", restaurant_id: rest1.id, completed: false
pickup3 = Pickup.create title: "Jerry's Pickup", description: "2 boxes of vegetables", start: "2015-06-10", restaurant_id: rest3.id, completed: false
pickup4 = Pickup.create title: "Vovo Telo Pickup", description: "4 bags of coffee beans", start: "2015-06-11", restaurant_id: rest7.id, completed: false
pickup5 = Pickup.create title: "Myog Pickup", description: "1 box of yogurt", start: "2015-06-18", restaurant_id: rest6.id, completed: false
pickup6 = Pickup.create title: "iX Pickup", description: "2 boxes of hot chocolate", start: "2015-06-16", restaurant_id: rest8.id, completed: false
pickup7 = Pickup.create title: "iX Pickup", description: "2 plates of desserts", start: "2015-06-24", restaurant_id: rest8.id, completed: false
pickup5 = Pickup.create title: "Nandos Pickup", description: "1 plate of sandwiches", start: "2015-06-26", restaurant_id: rest5.id, completed: false
pickup6 = Pickup.create title: "Ricks Pickup", description: "2 boxes of falafel", start: "2015-06-27", restaurant_id: rest4.id, completed: false
pickup7 = Pickup.create title: "Ricks Pickup", description: "2 boxes of meat", start: "2015-06-28", restaurant_id: rest4.id, completed: false

pickup1.restaurant = rest1
pickup2.restaurant = rest1
pickup3.restaurant = rest3
pickup4.restaurant = rest7
pickup5.restaurant = rest6
pickup6.restaurant = rest8
pickup7.restaurant = rest8
pickup5.restaurant = rest5
pickup6.restaurant = rest4
pickup7.restaurant = rest4

