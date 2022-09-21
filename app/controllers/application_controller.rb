class ApplicationController < ActionController::Base
    # def home
    # end
    include SessionsHelper

    private
    
    def logged_in_user
        unless logged_in?
            strore_location
            flash[:danger] = "Please log in."
            redirect_to root_url
        end
    end
end