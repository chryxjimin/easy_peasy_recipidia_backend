class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :image_url, :cuisine_id, :cuisine
  belongs_to :cuisine
end
