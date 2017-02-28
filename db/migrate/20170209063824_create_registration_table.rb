class CreateRegistrationTable < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :cost,         null: false
      t.string :information,            null: false, default: ""
      
      t.timestamps null: false
    end
  end
end
