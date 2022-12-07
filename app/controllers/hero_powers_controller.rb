class HeroPowersController < ApplicationController
    def create
        heropower = HeroPower.create!(hpower_params)
        render json: heropower
    end


    private
    def hpower_params
        params.permit(:strength, :power_id, :hero_id)
    end

    
end
