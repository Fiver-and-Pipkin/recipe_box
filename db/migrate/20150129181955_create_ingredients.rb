class CreateIngredients < ActiveRecord::Migration
  def change
    create_table(:ingredients) do |t|
      t.column(:ingredient_name, :string)
      t.column(:ingredient_id, :integer)

      t.timestamps
    end
  end
end
