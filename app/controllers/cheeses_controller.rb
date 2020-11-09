class CheesesController < ApplicationController
    def index
        @cheeses = Cheese.all
    end

    def show
        @cheese = Cheese.find(params[:id])
    end
    
    def new
   
        @cheese = Cheese.new
    end

    def create
        @cheese = Cheese.new(cheese_params)
        if @cheese.save
        redirect_to cheese_path(@cheese)
        else
        render 'new'    
        end

    end

    def edit
        finder_cheese
    end
    
    def update
        finder_cheese
        @cheese.update(cheese_params)
        redirect_to cheese_path(@cheese)
    end

    def destroy
        finder_cheese.delete
        redirect_to cheeses_path
    end


    private

    def finder_cheese
        @cheese = Cheese.find(params[:id])
    end

    def cheese_params
        params.require(:cheese).permit(:name, :description, :image, :cheese_type)
    end

end
