class Dish < ActiveRecord::Base
    has_many :restaurantdishes 
    has_many :restaurants, through: :restaurantdishes

end