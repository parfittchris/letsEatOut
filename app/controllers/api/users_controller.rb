class Api::UsersController < ApplicationController

    def show
        @user = User.find_by_id(params[:id])
        if @user.nil?
            render json: "Invalid user"
        else
            render "api/users/show"
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            login(@user)
            render "api/users/show"
        else
            render json: @user.errors.full_messages, status: 422
        end
    end

    def destroy
        @user = User.find_by_id(params[:id])
        if @user.nil?
            render json: "Invalid user"
        else
            @user.destroy
        end
    end

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end