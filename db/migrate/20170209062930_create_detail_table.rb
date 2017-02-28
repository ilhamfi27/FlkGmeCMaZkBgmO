class CreateDetailTable < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.integer :price,       null: false, default: 0
      t.string :doses,        null: false, default: ""
      t.integer :sub_total,    null: false
    
      t.timestamps null: false
    end
  end
end
