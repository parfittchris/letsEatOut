class Restaurant < ApplicationRecord
    validates :name, :address, :description, presence: true

    has_many :reviews,
    foreign_key: :restaurant_id,
    class_name: :Review

    has_many :user_reviews,
    through: :reviews,
    source: :users
    
    def self.find_by_name(name)
        restaurant = Restaurant.find_by(name: name)
        return nil unless movie
    end
end