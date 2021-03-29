# require_relative '../../models/cuisine.rb'
require 'open-uri'
require 'net/http'
require 'json'
require 'pry'

class Api

    API_KEY=ENV['API_KEY']


    def get_recipes
        #needs cuisine to be passed as an argument 
        # binding.pry
        url = "https://api.spoonacular.com/recipes/random?apiKey=0c9b318480b143c8a852a278b23937d5&number=30"
        uri = URI.parse(url)
        response_body = uri.read
        data = JSON.parse(response_body)
        data["recipes"].each do |recipe|
            title = recipe["title"]
            description = recipe["summary"]
            image_url = recipe["image"]
            if recipe["cuisines"].any? && Cuisine.find_by(name: recipe["cuisines"][0])
               
                #we need to grab the cuisine object and have it saved as variable
                cuisine = Cuisine.find_by(name: recipe["cuisines"][0])
            elsif recipe["cuisines"].empty?
                cuisine = Cuisine.find_by(name: "General")
            else
                cuisine = Cuisine.create(name: recipe["cuisines"][0])
            end
            
            # ingredients = recipe["extendedIngredients"]["name"]
            # instructions = recipe["instructions"]
            #  binding.pry
           Recipe.create(title: recipe["title"], description: recipe["summary"], image_url: recipe["image"], cuisine_id: cuisine.id)
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