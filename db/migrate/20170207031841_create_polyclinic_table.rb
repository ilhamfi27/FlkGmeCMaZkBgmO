class CreatePolyclinicTable < ActiveRecord::Migration
  def change
    create_table :polyclinics do |t|
      t.string :name,  null: false, default: ""

      t.timestamps null: false
    end
  end
end
