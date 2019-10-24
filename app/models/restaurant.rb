class Restaurant < ApplicationRecord
    validates :name, :address, presence: true

    def self.find_by_name(name)
        restaurant = Restaurant.find_by(name: name)
        return nil unless movie
    end
end