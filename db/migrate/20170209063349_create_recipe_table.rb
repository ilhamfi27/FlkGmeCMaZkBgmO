class CreateRecipeTable < ActiveRecord::Migration
  def change
    create_table "Resep", id: false do |t|
      t.primary_key "NomorResep"
      t.string "TanggalResep",   null: false, default: ""
      t.integer "KodeDkt",       null: false
      t.integer "KodePsn",       null: false
      t.integer "KodePlk",       null: false
      t.integer "TotalHarga",    null: false
      t.integer "Bayar",         null: false
      t.integer "Kembali",       null: false
      
      t.timestamps null: false
    end
  end
end
