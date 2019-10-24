class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.integer :rating
      t.timestamps
    end
    add_index :restaurants, :name, unique: true
  end
end
