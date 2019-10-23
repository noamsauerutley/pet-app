class ApplicationController < ActionController::Base
    before_action :set_current_user


    def set_current_user
        @current_user = Adopter.find_by(id: session[:adopter_id])
      end
end
