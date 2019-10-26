@reviews.each do |review|
        json.set! review.id do
        json.extract! review, :id, :author_id, :restaurant_id, :content, :rating :title
    end
end