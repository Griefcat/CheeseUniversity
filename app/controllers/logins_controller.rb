class LoginsController < ApplicationController
skip_before_action :logged_in?, only: [:new, :create]

def new
    render :new
end 

def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id 
        redirect_to courses_path
    else 
        redirect_to '/login'
    end 
end 

def destroy
    session.delete(:user_id)
    redirect_to "/login"
end 
















end 