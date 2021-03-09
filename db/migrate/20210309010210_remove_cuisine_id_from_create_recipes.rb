class RemoveCuisineIdFromCreateRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :cuisine_id, :integer
  end
end
