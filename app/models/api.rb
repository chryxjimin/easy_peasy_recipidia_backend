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
        response = uri.read
        data = JSON.parse(response)
        # binding.pry
    end
end


Api.new.get_recipes