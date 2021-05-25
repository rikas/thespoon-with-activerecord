class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.integer :rating, default: 0
      t.string :address

      t.timestamps
    end
  end
end
