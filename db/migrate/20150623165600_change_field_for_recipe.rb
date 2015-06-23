class ChangeFieldForRecipe < ActiveRecord::Migration
  def change
    rename_column :recipes, :text, :instructions
  end
end
