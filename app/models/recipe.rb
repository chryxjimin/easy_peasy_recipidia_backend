class Recipe < ApplicationRecord
    belongs_to :cuisine
    validates_presence_of :title, :description, :image_url
end
