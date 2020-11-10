class UsersController < ApplicationController

    def show 
        @user = User.find(params[:id])
    end 
    
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
    
 private
    
    def user_params
        params.permit(:username, :email, :password, :password_confirmation)
    end
    

end
