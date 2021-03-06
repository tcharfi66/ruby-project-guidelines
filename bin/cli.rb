require 'pry'
def intro 
    puts "
    ╦ ╦╔═╗╦  ╔═╗╔═╗╔╦╗╔═╗  ╔╦╗╔═╗  ╦═╗╔═╗╔═╗╔╦╗╔═╗┬┬┬
    ║║║║╣ ║  ║  ║ ║║║║║╣    ║ ║ ║  ╠╦╝║╣ ╚═╗ ║ ║ ║│││
    ╚╩╝╚═╝╩═╝╚═╝╚═╝╩ ╩╚═╝   ╩ ╚═╝  ╩╚═╚═╝╚═╝ ╩ ╚═╝ooo
    
    "
    puts "Welcome To Our Network of Restaurants !!!" 
    
end

def menu 
    puts "1) About Us "
    puts "2) Find Restaurant Location"
    puts "3) Enter a Cuisine Type, Get a Dish Suggestion"
    puts "4) Get a Dish From a Specific Restaurant"
    puts "5) Enter a Dish and see which one of Our Restaurants offers it"
    puts "6) Input a dollar amount and we will show you a dish that fits your budget"
    input = gets.chomp 

    choice = input.to_i

    if choice == 1 
        about
    elsif choice == 2
        find_restaurant_loc
    elsif choice == 3
        cuisine 
    elsif choice == 4
        restaurant_menu
    elsif choice == 5 
        get_restaurant 
    elsif choice == 6 
        below_price 
    elsif choice == 7 
        "Goodbye!"
        return 0
    end


end 

def about 
    puts "We have built this app to help you and your significant other stop being so 
    indecisive when it comes to ordering food. From finding location, choosing a specific type of cusine
    to looking for a specific dish or something under a specific price. Cheers! "
end 

#get location of a specific restaurant 
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
    pp "Since you are looking for " + c + ", we found you " +  x.name.downcase
end



#get a dish from a restaurant  

def restaurant_menu
    puts "Whose Menu Would You Like to see "
    rest_name = gets.chomp 
   
    r = Restaurant.find_by(name: rest_name).id
    x = RestaurantDish.find_by(restaurant_id: r).dish_id
    to_return = Dish.find_by(id: x).name 

   pp to_return 
    
end


#enter a dish and see which restaurant in our network offers it 
def get_restaurant 
    puts "Enter a dish and we will tell you a restaurant that offers it"
    dish_name = gets.chomp 
    d = Dish.find_by(name: dish_name).id
    r = RestaurantDish.find_by(dish_id: d).restaurant_id 
    to_return = Restaurant.find_by(id: r).name
    pp to_return

end



#input price, get a dish<= that price 

def below_price
    puts "Enter your budget"
    p = gets.chomp 
    dish = RestaurantDish.find_by(price: p.to_i ).dish_id

    pp "You can afford a " + (Dish.find_by(id: dish).name) 


end