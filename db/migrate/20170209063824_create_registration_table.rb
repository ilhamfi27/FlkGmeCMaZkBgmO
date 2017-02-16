class CreateRegistrationTable < ActiveRecord::Migration
  def change
    create_table "Pendaftaran", id: false do |t|
      t.primary_key "NomorPendf"
      t.string "TanggalPendf",   null: false, default: ""
      t.integer "KodeDkt",       null: false
      t.integer "KodePsn",       null: false
      t.integer "KodePlk",       null: false
      t.string "Biaya",          null: false, default: ""
      t.string "Ket",            null: false, default: ""
      
      t.timestamps null: false
    end
  end
end
