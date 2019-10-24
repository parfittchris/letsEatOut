class Api::SessionsController < ApplicationController
    def create
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])

        if @user
            render "api/users/show"
        else
            render json: ["invalid username/password combination"], status: 401
        end
    end

    def destroy
        if current_user
            logout!
            render json: {}
        else
            render json: "No user logged in!", status: 404
        end
    end
end