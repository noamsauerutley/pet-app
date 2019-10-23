class AdoptionsController < ApplicationController
  
   def show
       @adoption = Adoption.find(params[:id])
       @adopter = @adoption.adopter.name
    #    @pet = Pet.find(params[:id])
       @pet = @adoption.pet.name
   end

   def new
       @adoption = Adoption.new
   end

   def create
      @adoption = Adoption.create(adoption_params)
      @pet = Pet.find(@adoption.pet_id)
      @pet.adoption_status = true
      @pet.save
      redirect_to @adoption
   end
   
   private

   def adoption_params
       params.require(:adoption).permit(:adopter_id,:pet_id)
   end
end
