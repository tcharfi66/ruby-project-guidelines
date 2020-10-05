def intro 
    puts "Welcome To The Restaurant Directory"
end

def find_restaurant 
    puts "Enter Restaurant:  " 
    name= gets.chomp
   # Restaurant.find_by(name: name)
end

# def restaurant_menu 
#     RestaurantDish.all.select do |restaurant|
#         restaurant.restaurant_id == restaurant_id 
#     end
# end