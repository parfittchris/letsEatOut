class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :author_id, null: false
      t.integer :restaurant_id, null: false
      t.text :content, null: false
      t.integer :rating
      t.timestamps
    end
      add_index :reviews, :author_id
      add_index :reviews, :restaurant_id
      add_index :reviews, :rating
  end
end
