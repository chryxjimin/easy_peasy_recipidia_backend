# require_relative '../../.env'
require 'open-uri'
require 'net/http'
require 'json'
require 'pry'

class Api

    API_KEY=ENV['API_KEY']


    def get_recipes
        url = "https://api.spoonacular.com/recipes/random?apiKey=#{API_KEY}"
        uri = URI.parse(url)
        response_body = uri.read
        data = JSON.parse(response_body)
        data["recipes"].each do |recipe|
            title = recipe["title"]
            description = recipe["summary"]
            image_url = recipe["image"]
            # ingredients = recipe["extendedIngredients"]["name"]
            # instructions = recipe["instructions"]
            # binding.pry
            Recipe.create(title: recipe["title"], description: recipe["summary"], image_url: recipe["image"], cuisine: )
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