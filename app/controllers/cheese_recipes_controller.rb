class CheeseRecipesController < ApplicationController
    def index
        @cheese_recipes = CheeseRecipe.all
    end

    def show
        finder_recipe
    end

    def new
   
        @cheese_recipe = CheeseRecipe.new
    end

    def create
        @cheese_recipe = CheeseRecipe.new(cheese_recipe_params)
        if @cheese_recipe.valid?
            @cheese_recipe.save
            redirect_to cheese_recipe_path(@cheese_recipe)
        else
            render 'new'
        end

    end

    def edit
        finder_recipe
    end
    
    def update
        finder_recipe
        @cheese_recipe.update(cheese_recipe_params)
        redirect_to cheese_recipe_path(@cheese_recipe)
    end

    def destroy
        finder_recipe.delete
        redirect_to cheese_recipes_path
    end


    private

    def finder_recipe
        @cheese_recipe = CheeseRecipe.find(params[:id])
    end

    def cheese_recipe_params
        params.require(:cheese_recipe).permit(:name, :ingredients, :directions, :cheese_id, :image)
    end
end
