class Api::RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
        render "api/restaurants/index"
    end

    def show
        @restaurant = Restaurant.find_by_id(params[:id])

        if @movie.nil?
            render json: "Restaurant not found"
        else
            render "api/restaurants/show"
        end
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :rating)
    end
end