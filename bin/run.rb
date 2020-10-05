require_relative '../config/environment'
require 'pry'
require_relative '../bin/cli.rb'


intro 

choice = menu 

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



