class Api::FollowersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @followers = Follower.all
        render "api/followers/index"
    end

    def create
        @follower = Follower.new(follower_params)

        if !@follower.save
            render json: @follower.errors.full_messages, status: 422
        end
    end

    def show
        @follower = Follower.find_by_id(params[:id])
        
        if @follower.nil?
            render json: "Follower not found"
        else
            render "api/followers/show"
        end
    end

    def destroy
        @follower = Follower.where(user_id: params[:user_id], follow_id: params[:follow_id])

        if @follower.length === 0
            render json: "Follower not found"
        else
            @follower[0].destroy
        end
    end

    def follower_params
        params.require(:follower).permit(:user_id, :follow_id)        
    end
end