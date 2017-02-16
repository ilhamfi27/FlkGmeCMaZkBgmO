 class CreateDetailTable < ActiveRecord::Migration
  def change
    create_table "Detail", id: false do |t|
      t.primary_key "NomorResep"
      t.integer "KodeObat",    null: false
      t.string "Harga",        null: false, default: ""
      t.string "Dosis",        null: false, default: ""
      t.integer "SubTotal",    null: false
    
      t.timestamps null: false
    end
  end
end
