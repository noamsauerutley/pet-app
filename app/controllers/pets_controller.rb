class PetsController < ApplicationController

    def local

    end

    def index
        @pets = Pet.all
    end
   
    def show
        @pet = Pet.find(params[:id])
    end

    def new
        @pet = Pet.new
    end
    
    def create
        @pet = Pet.create(pet_params)
        redirect_to @pet
    end

    def edit
        @pet = Pet.find(params[:id])
    end
    
    def update
       @pet = Pet.find(params[:id])
       @pet.update(pet_params)
       redirect_to @pet
    end

    
    private

    def pet_params
        params.reqiure(:pet).permit(:name,:selter_id,:description,:image_url,:adoption_status)
    end
end
