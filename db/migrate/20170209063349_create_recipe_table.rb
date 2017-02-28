class CreateRecipeTable < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :total_price,    null: false
      t.integer :pay,         null: false
      t.integer :change,       null: false
      
      t.timestamps null: false
    end
  end
end
