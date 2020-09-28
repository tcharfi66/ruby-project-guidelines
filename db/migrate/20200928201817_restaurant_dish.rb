class RestaurantDish < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurantdishes do |t|
      t.integer :price
      t.belongs_to :dish, null: false, foreign_key: true
      t.belongs_to :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
