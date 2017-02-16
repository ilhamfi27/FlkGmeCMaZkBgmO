class CreateDoctorTable < ActiveRecord::Migration
  def change
    create_table "Dokter", id: false do |t|
      t.primary_key "KodeDkt"
      t.string "NamaDkt",          null: false, default: ""
      t.string "Spesialis",        null: false, default: ""
      t.string "AlamatDkt",        null: false, default: ""
      t.string "TeleponDkt",       null: false, default: ""
      t.integer "KodePlk",         null: false
      t.integer "Tarif",           null: false
      
      t.timestamps null: false
    end
  end
end
