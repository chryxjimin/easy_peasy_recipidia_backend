class Api::V1::RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        # options = {
        #     include: [:cuisine]
        # }
        render json: RecipeSerializer.new(recipes)
    end

    def create
        byebug
        recipe = Recipe.new(recipe_params)
        if recipe.save
            render json: RecipeSerializer.new(recipe), status: :accepted
        else 
            render json: {message: recipe.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        # byebug
        recipe = Recipe.find(params[:id])
        render json: RecipeSerializer.new(recipe)
    end

    def destroy 
        # byebug
        # recipe_id = params[:id].to_i
        # recipe = Recipe.find(recipe_id)

        recipe = Recipe.find(params[:id])

        if recipe.destroy
            render json: {id: recipe.id}
        end
    end


    private

        def recipe_params
            params.require(:recipe).permit(:title, :description, :image_url, :cuisine_id)
        end

end
