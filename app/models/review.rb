class Review < ApplicationRecord
    validates :author_id, :restaurant_id, :content, presence: true

    belongs_to :restaurants,
    foreign_key: :restaurant_id,
    class_name: :Restaurant

    belongs_to :users,
    foreign_key: :author_id,
    class_name: :User
end