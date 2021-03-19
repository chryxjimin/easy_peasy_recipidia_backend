class Recipe < ApplicationRecord
    belongs_to :cuisine
    validates_presence_of :title, :description, :image_url

    def cuisine_name
        self.cuisine.name
    end
end
