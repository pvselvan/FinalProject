# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.delete_all
Pickup.delete_all

rest1 = Restaurant.create! name: "Yours Truly", address: "74 Kloof St, Cape Town, 8001", description: "At Yours Truly, it really is a lifestyle. With an amazing selection of gourmet sandwiches, salads, pizzas, and coffee, you always have the perfect companion to an afternoon on the terrace filled with live music from local artists.", url: "http://yourstrulycafe.co.za/" 
rest2 = Restaurant.create! name: "Hudsons", address: "69 Kloof Street, Gardens, Cape Town, 8001", description: "At Hudson's, burgers are so much more than a patty and a roll. The quality of their ingredients translates into a desire to create an experience for each customer, making them an integral part of Cape Town culture.", url: "http://www.theburgerjoint.co.za/"
rest3 = Restaurant.create! name: "Jerry's", address: "123 Lower Main Rd, Observatory, Cape Town, 7925", description: "At Jerry's, you can expect to find delicious burgers with a more sophisticated New York styled venue. It's a place enjoy great food in the presence of great company.", url: "http://www.jerrysburgerbar.co.za/"
rest4 = Restaurant.create! name: "Ricks American Café", address: "2 Park Road, Gardens, Cape Town, 8001", description: "Yep, you thought right. This Casablanca movie-themed restaurant is inspired by Moroccan, Mediterranian, and American influences. The mountain-views serve as the perfect backdrop to a cozy meal.", url: "http://www.rickscafe.co.za/"
rest5 = Restaurant.create! name: "Nandos", address: "309 Main Rd Shop 9 & 10, Sea Point, Cape Town", description: "Nando's is an international casual dining restaurant chain native to South Africa. With a Mozambican/Portugese theme, it's definitely a unique experience for any palette.", url: "http://www.nandos.co.za/"
rest6 = Restaurant.create! name: "Myog", address: "50 Kloof St Gardens, Cape Town", description: "Looking for a vibey place to enjoy a sweet treat? Froyo is never the wrong answer. At Myog, you'll find the freshest yogurt and toppings that come together in perfect harmony.", url: "http://myog-frozen-yogurt.com/"
rest7 = Restaurant.create! name: "Vovo Telo", address: "60B Kloof St, Cape Town", description: "It all starts with a story, and no story hits the same note quite like Vovo Telo's. It shines in their atmosphere, their food, and their service. At Vovo Telo, you just feel at home.", url: "http://www.vovotelo.co.za/"
rest8 = Restaurant.create! name: "iX Food Truck", address: "south, 19 Park Road, Gardens, Cape Town, 8001", description: "There's no place like home."

pickup1 = Pickup.create title: "Yours Truly Pickup", description: "2 boxes of produce", start: "2015-06-02T20:00:00.00Z", restaurant_id: rest1.id, completed: false
pickup2 = Pickup.create title: "Yours Truly Pickup", description: "2 boxes of bread", start: "2015-06-04T20:00:00.00Z", restaurant_id: rest1.id, completed: false
pickup3 = Pickup.create title: "Jerry's Pickup", description: "2 boxes of vegetables", start: "2015-06-10T20:00:00.00Z", restaurant_id: rest3.id, completed: false
pickup4 = Pickup.create title: "Vovo Telo Pickup", description: "4 bags of coffee beans", start: "2015-06-11T20:00:00.00Z", restaurant_id: rest7.id, completed: false
pickup5 = Pickup.create title: "Myog Pickup", description: "1 box of yogurt", start: "2015-06-18T20:00:00.00Z", restaurant_id: rest6.id, completed: false
pickup6 = Pickup.create title: "iX Pickup", description: "2 boxes of hot chocolate", start: "2015-06-16T20:00:00.00Z", restaurant_id: rest8.id, completed: false
pickup7 = Pickup.create title: "iX Pickup", description: "2 plates of desserts", start: "2015-06-24T20:00:00.00Z", restaurant_id: rest8.id, completed: false
pickup5 = Pickup.create title: "Nandos Pickup", description: "1 plate of sandwiches", start: "2015-06-26T20:00:00.00Z", restaurant_id: rest5.id, completed: false
pickup6 = Pickup.create title: "Ricks Pickup", description: "2 boxes of falafel", start: "2015-06-27T20:00:00.00Z", restaurant_id: rest4.id, completed: false
pickup7 = Pickup.create title: "Ricks Pickup", description: "2 boxes of meat", start: "2015-06-28T20:00:00.00Z", restaurant_id: rest4.id, completed: false

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

