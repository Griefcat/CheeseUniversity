class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def show
        
        @course = Course.find(params[:id])

    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.create(course_params)
        redirect_to course_path(@course)
        #is not working!!
    end

    def edit
        finder_course
    end
    
    def update
        finder_course
        @course.update(course_params)
        redirect_to course_path(@course)
    end

    def destroy
        finder_course.delete
        redirect_to courses_path
    end


    private

    def finder_course #this is a helper method for finding a specif element
        @course = Course.find(params[:id])
    end

    def course_params
        params.require(:course).permit(:name, :description, :image, :cheese_id, :instructor_id, :user_id)
    end
end
