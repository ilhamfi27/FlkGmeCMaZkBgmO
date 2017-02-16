class CreatePatientTable < ActiveRecord::Migration
  def change
    create_table "Pasien", id: false do |t|
      t.primary_key "KodePsn"
      t.string "NamaPsn",          null: false, default: ""
      t.string "AlamatPsn",        null: false, default: ""
      t.string "GenderPsn",        null: false, default: ""
      t.string "UmurPsn",          null: false, default: ""
      t.string "TeleponPsn",       null: false, default: ""
    
      t.timestamps null: false
    end
  end
end
