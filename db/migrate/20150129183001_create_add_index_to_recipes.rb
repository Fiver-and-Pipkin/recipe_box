class CreateAddIndexToRecipes < ActiveRecord::Migration
  def change

    add_index(:recipes, :recipe_name)
    add_index(:recipes, :recipe_id)
    add_index(:recipes, :rating)
    add_index(:categories, :category_name)
    add_index(:categories, :category_id)
    add_index(:ingredients, :ingredient_name)
    add_index(:ingredients, :ingredient_id)
  end
end
