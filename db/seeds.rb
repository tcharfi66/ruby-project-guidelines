require 'faker'

RestaurantDish.destroy_all
Restaurant.destroy_all
Dish.destroy_all

40.times {Restaurant.create(name: Faker::Restaurant.name, location: Faker::Address.full_address)}

10.times {Dish.create(name: Faker::Food.dish, cuisine: Faker::Restaurant.type)}

40.times {RestaurantDish.create(price: Faker::Business.credit_card_number, dish: Dish.all.sample, restaurant: Restaurant.all.sample )}