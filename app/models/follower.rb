class Follower < ApplicationRecord
    validates :user_id, :follow_id, presence: true

    belongs_to :followers,
    foreign_key: :follow_id,
    class_name: :User

    belongs_to :users,
    foreign_key: :user_id,
    class_name: :User
end