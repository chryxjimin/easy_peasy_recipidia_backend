require 'open-uri'
require 'net/http'
require 'json'

class Api

    API_KEY = ENV["API_KEY"]
    url = "https://api.spoonacular.com/recipes/random/apiKey=#{API_KEY}"

    def get_recipes
        binding.pry
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        recipes = JSON.parse(response.body)
    end
end