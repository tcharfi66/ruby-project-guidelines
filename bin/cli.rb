require 'pry'
def intro 
    puts "Welcome To The Restaurant Directory"
end



#get location of a restaurant 
def find_restaurant_loc
    puts "Enter Restaurant:  " 
    rest_name = gets.chomp
    x = Restaurant.find_by(name: rest_name)
    pp x.location
end



#get menu of a restaurant 

# def restaurant_menu 
#     RestaurantDish.all.select do |restaurant|
#         restaurant.restaurant_id == restaurant_id 
      
#     end
# end