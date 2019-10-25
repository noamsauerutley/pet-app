class SheltersController < ApplicationController


    def index
        @shelters = Shelter.all
    end

    def new
        @shelter = Shelter.new
    end

    def edit
        @shelter = Shelter.find(params[:id])
    end

    def update
        @shelter = Shelter.find(params[:id])
        @shelter.update(shelter_params)
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
