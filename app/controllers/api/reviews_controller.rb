class Api::ReviewsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @reviews = Review.all

        render "api/reviews/index"
    end
    
    def create
        @review = Review.new(review_params)
        if @review.save
            render "api/reviews/show"
        else
            render json: ["Review failed"]
        end
    end

    def show
        @review = Review.find_by_id(params[:id])
        if @review.nil?
            render json ["Review not found"]
        else
            render "api/reviews/show"
        end
    end

    def destroy 
        @review = Review.find_by_id(params[:id])
        if @review.nil?
            render json ["Review not found"]
        else
            @review.destroy
        end
    end

    def review_params
        params.require(:review).permit(:author_id, :restaurant_id, :content, :rating, :title)
    end
end