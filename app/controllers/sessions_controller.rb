class SessionsController < ApplicationController
    #skip_before_action :authorized, only: [:new, :create, :destroy]
  
    def new
       render :new
    end
  
    def create
      @current_user = Adopter.find_by(name: params[:session][:name])
      if @current_user && @current_user.authenticate(params[:session][:password])
        session[:adopter_id] = @current_user.id
        redirect_to pets_path
      else
        flash[:errors] = ["You must be logged in to match with pets."]
        render "sessions#index"
      end
    end
  
    def destroy
      session.delete(:adopter_id)
      redirect_to login_path
    end
  
  end