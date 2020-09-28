class Restaurant < ActiveRecord::Migration[6.0]
  def change
      create_table :restaurants do |t|
        t.string :name
        t.string :location
  
        t.timestamps
      end
  end
end

