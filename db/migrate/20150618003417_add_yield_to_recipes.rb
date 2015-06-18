class AddYieldToRecipes < ActiveRecord::Migration
  def up
    add_column :recipes, :yield, :string
  end

  def down
    remove_column :recipes, :yield, :string
  end
end
