class AdoptersController < ApplicationController
 before_action :set_adopter,only: [:edit,:show,:update,:destroy]

 def show
    
  end

  def new
     @adopter = Adopter.new 
  end

  def create
      @adopter = Adopter.create!(adopter_params)
      if @adopter.save
        session[:adopter_id] = @adopter.id
        flash[:notice] = "You signed up successfully"
        flash[:color]= "valid"
        redirect_to @adopter
      else
        flash[:notice] = "Form is invalid"
        flash[:color]= "invalid"
        redirect_to new_adopter_path
      end
  end

  def edit
  end

  def update
    @adopter.update(adopter_params)
    redirect_to @adopter
  end

  def destroy
    redirect_to pets_path
    # redirect this to login / signup page once that view is built
  end

  private 

  # def authorize_adopter
  #   if @adopter != @current_user
  #     redirect_to 'sessions#index'
  #   end

  # end


  def adopter_params
    params.require(:adopter).permit(:name,:description,:zip,:image_ur,:password)
  end

  def set_adopter
    @adopter = Adopter.find(params[:id])
  end

end
