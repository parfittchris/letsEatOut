@followers.each do |follower|
        json.set! follower.id do
        json.extract! follower, :id, :user_id, :follow_id
    end
end