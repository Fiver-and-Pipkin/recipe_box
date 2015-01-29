class CreateCategories < ActiveRecord::Migration
  def change
    create_table(:categories) do |t|
      t.column(:category_name, :string)
      t.column(:category_id, :integer)

      t.timestamps
    end
  end
end
