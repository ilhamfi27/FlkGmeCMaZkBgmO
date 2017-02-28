class CreatePatientTable < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name,               null: false, default: ""
      t.string :address,            null: false, default: ""
      t.string :gender,             null: false, default: ""
      t.string :age,                null: false, default: "", limit: 3
      t.string :phone_number,       null: false, default: "", limit: 16
    
      t.timestamps null: false
    end
  end
end
