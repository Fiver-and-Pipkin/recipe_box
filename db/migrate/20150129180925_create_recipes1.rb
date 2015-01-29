class CreateRecipes1 < ActiveRecord::Migration
  def change
    create_table(:recipes) do |t|
      t.column(:recipe_name, :string)
      t.column(:instructions, :string)
      t.column(:recipe_id, :integer)
      t.column(:rating, :integer)

      t.timestamps
    end
  end
end
