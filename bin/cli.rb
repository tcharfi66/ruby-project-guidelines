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

#enter cuisine get a dish 
def cuisine 
    puts "What kind of Cuisine are you in the mood for tonight?"
    c = gets.chomp 
    x = Dish.find_by(cuisine: c)
    pp "Since you are looking for" + c + ", we found you " +  x.name
end



#get all dishes 

def restaurant_menu
    puts "Whose Menu Would You Like to see "
    rest_name = gets.chomp 
   
    r = Restaurant.find_by(name: rest_name).id
    x = RestaurantDish.find_by(restaurant_id: r).dish_id
    to_return = Dish.find_by(id: x).name 

   pp to_return 
    
end


#enter a dish and see which restaurant offers it 




#input price, get dishes <= that price 