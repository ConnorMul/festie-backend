class FestivalsController < ApplicationController

    def index
        fests = Festival.all 
        render json: fests
    end

end
