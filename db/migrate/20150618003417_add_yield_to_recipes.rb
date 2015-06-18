class AddYieldToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :theyield, :integer
  end
  #
  # def down
  #   remove_column :recipes, :theyield, :integer
  # end
end
