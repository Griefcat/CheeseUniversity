class UsersController < ApplicationController
    
    skip_before_action :logged_in?, only: [:new, :create]
    
    def new
    end 
    
    def create
        
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to home_path
        else
            redirect_to cheeses_path
        end
        
    end
    
    def show 
        @user = User.find(session[:user_id])
    end 

    
 private
    
    def user_params
        params.permit(:username, :email, :password, :password_confirmation)
    end
    

end
