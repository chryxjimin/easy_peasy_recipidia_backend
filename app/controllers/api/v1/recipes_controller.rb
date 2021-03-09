class Api::V1::RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes
    end

    def create
        recipe = Recipe.new(recipe_params)
        if recipe.save
            render json: recipe, status: :accepted
        else 
            redner json: {message: recipe.errors.full_messages}, status: :unprocessible_entity
        end
    end


    private

        def recipe_params
            params.require(:recipe).permit(:title, :description, :image_url, :cuisine_id)
        end

end
