class CreateMedicineTable < ActiveRecord::Migration
  def change
    create_table "Obat", id: false do |t|
      t.primary_key "KodeObat"
      t.string "NamaObat",     null: false, default: ""
      t.string "JenisObat",    null: false, default: ""
      t.string "Kategori",     null: false, default: ""
      t.string "HargaObat",    null: false, default: ""
      t.integer "JumlahObat",  null: false
      
      t.timestamps null: false
    end
  end
end
