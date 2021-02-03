class FestivalsController < ApplicationController

    def index
        fests = Festival.all 
        render json: fests
    end
    
    def show
        fest = Festival.find(params[:id])
        render json: fest
    end

    private

    def fest_params
        params.permit(:name, :image, :city, :dates, :reviews, :favorites)
    end
end
