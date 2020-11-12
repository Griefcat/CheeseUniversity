class UsersCourseController < ApplicationController
  def index
  end

  def new
  end

  def create
    
    @users_course = UsersCourse.new(users_course_params)
    @users_course.save
    redirect_to users_course_path(@users_course)
  end
  def show
    @users_course = UsersCourse.find(params[:id])
  end

  def destroy
    @users_course = UsersCourse.find(params[:id])
    @users_course.delete
    redirect_to courses_path
  end


  private

  def users_course_params
    params.permit(:user_id, :course_id)
  end
end
