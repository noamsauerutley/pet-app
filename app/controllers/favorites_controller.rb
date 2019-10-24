class FavoritesController < ApplicationController
  def new
      @favorite = Favorite.new
  end

  def create
      @favorite = Favorite.create(favorite_params)
      redirect_to pets_path
  end

  private

  def favorite_params
    params.require(:favorite).permit(:adopter_id,:pet_id)
  end

end
