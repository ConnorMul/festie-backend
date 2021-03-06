class UsersController < ApplicationController

    before_action :authorize, except: [:index, :show, :update]

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def autologin
        render json: @user
    end

    private

    def user_params
        params.permit(:username, :password, :email, :avatar)
    end

end
