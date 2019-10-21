class SheltersController < ApplicationController


    def new
        @shelter = Shelter.new
    end

    def create
        @shelter.create(shelter.params)
        redirect_to @shelter
    end

    def show
        @shelter = Shelter.find(params[:id])
    end

    private
    def shelter_params
        params.require(:shelter).permit(:name, :zip, :image_url, :description)
    end
end
