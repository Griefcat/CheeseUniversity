class InstructorsController < ApplicationController

    def index
        @instructors = Instructor.all
    end

    def show
        @instructor = Instructor.find(params[:id])
    end

       
    def new
        @instructor = Instructor.new
    end

    def create
        @instructor = Instructor.create(instructor_params)
        redirect_to instructor_path(@instructor)

    end

    def edit
        finder_instructor
    end
    
    def update
        finder_instructor
        @instructor.update(instructor_params)
        redirect_to instructor_path(@instructor)
    end

    def destroy
        finder_instructor.delete
        redirect_to instructors_path
    end


    private

    def finder_instructor
        @instructor = Instructor.find(params[:id])
    end

    def instructor_params
        params.require(:instructor).permit(:instructor_name, :specialty, :email, :biography, :image_url)
    end

end
