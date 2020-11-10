class ApplicationController < ActionController::Base
    before_action :logged_in?
    skip_before_action :verify_authenticity_token


    def home
    end

    def about
    end

    def logged_in?
        if session[:user_id]
            return true 
        else 
            return false 
        end 
    end 

helper_method :logged_in?

end
