class AddReferenceDetailsTableToRecipeTable < ActiveRecord::Migration
  def change
  	add_reference :details, :recipe, index: true, foreign_key: true
  end
end
