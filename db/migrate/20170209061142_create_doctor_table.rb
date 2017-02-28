class CreateDoctorTable < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name,              null: false, default: ""
      t.string :specialist,        null: false, default: ""
      t.string :address,           null: false, default: ""
      t.string :phone_number,      null: false, default: "", limit: 16
      t.integer :fee,              null: false
      
      t.timestamps null: false
    end
  end
end
