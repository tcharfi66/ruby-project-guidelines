class Restaurant < ActiveRecord::Base
    has_many :restaurantdishes 
    has_many :dishes, through: :restaurantdishes

end