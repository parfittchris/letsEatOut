class Api::UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def show
        @user = User.find_by_id(params[:id])
        if @user.nil?
            render json: "Invalid user"
        else
            render "api/users/show"
        end
    end

    def create
        @user = User.new(username: params[:username], email: params[:email], password: params[:password])
        if @user.save
            login!(@user)
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

    private 

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end