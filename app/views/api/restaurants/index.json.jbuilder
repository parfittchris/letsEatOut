@restaurants.each do |restaurant|
        json.set! restaurant.id do
        json.extract! restaurant, :id, :name, :address, :description, :rating, :reviews
    end
end