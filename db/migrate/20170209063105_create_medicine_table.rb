class CreateMedicineTable < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name,     null: false, default: ""
      t.string :types_of_medicine,    null: false, default: ""
      t.string :category,     null: false, default: ""
      t.integer :price,   null: false, default: 0
      t.integer :amount,  null: false
      
      t.timestamps null: false
    end
  end
end
