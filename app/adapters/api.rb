# require_relative '../../.env'
require 'open-uri'
require 'net/http'
require 'json'
require 'pry'

class Api

    API_KEY=ENV['API_KEY']


    def get_recipes
        #needs cuisine to be passed as an argument 
        url = "https://api.spoonacular.com/recipes/random?apiKey=#{API_KEY}"
        uri = URI.parse(url)
        response_body = uri.read
        data = JSON.parse(response_body)
        data["recipes"].each do |recipe|
            title = recipe["title"]
            description = recipe["summary"]
            image_url = recipe["image"]
            if recipe["cuisines"] = []
                binding.pry
                recipe["cuisines"] = Cuisine.find_create_by(name: "General")
            else
                recipe["cuisines"] = recipe["cuisines"]
            end
            
            # ingredients = recipe["extendedIngredients"]["name"]
            # instructions = recipe["instructions"]
            binding.pry
            Recipe.create(title: recipe["title"], description: recipe["summary"], image_url: recipe["image"])
            #needs cuisine to be passed as an argument 
            #need to make sure the first letter is in caps"

        end
    end
end


Api.new.get_recipes

# data["recipes"][0]["title"]

# data["recipes"][0]["extendedIngredients"][0]["name"]
# data["recipes"][0]["extendedIngredients"][0]["original"]

# data["recipes"][0]["extendedIngredients"].map do |ingredient|
#     ingredientsArray = []
#     ingredientsArray <<  ingredient["name"] + " - " + ingredient["original"]
#     # ingredientsArray.flatten
# end