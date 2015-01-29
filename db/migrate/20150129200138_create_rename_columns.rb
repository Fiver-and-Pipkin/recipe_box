class CreateRenameColumns < ActiveRecord::Migration
  def change
    rename_column(:recipes, :recipe_id, :category_id)
    rename_column(:categories, :category_id, :recipe_id)
  end
end
