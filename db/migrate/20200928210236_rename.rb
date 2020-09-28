class Rename < ActiveRecord::Migration[6.0]
  def change
  
        rename_table :restaurantdishes, :restaurant_dishes
  end
end
