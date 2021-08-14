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
        url = "https://api.spoonacular.com/recipes/random?apiKey=#{API_KEY}&number=30"
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
           Recipe.create(title: recipe["title"], description: recipe["summary"], image_url: recipe["image"], cuisine_id: cuisine.id)
        end
    end

end


Api.new.get_recipes
