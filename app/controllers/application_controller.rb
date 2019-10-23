class ApplicationController < ActionController::Base
    before_action :set_current_user

    before_action :authorized

    private
  
    def authorized
      if @current_user == nil
        redirect_to "/login"
      end
    end

    def set_current_user
        @current_user = Adopter.find_by(id: session[:adopter_id])
      end
end
