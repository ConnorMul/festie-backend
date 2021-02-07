class FavoritesController < ApplicationController

    def create
        favorite = Favorite.create(favorite_params)
        render json: favorite
    end

    def index
        favorites = Favorite.all
        render json: favorites
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: favorite
    end

    private

    def favorite_params
        params.permit(:festival_id, :user_id)
    end

end
