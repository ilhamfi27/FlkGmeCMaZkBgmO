class CreatePaymentTable < ActiveRecord::Migration
  def change
    create_table "Pembayaran", id: false do |t|
      t.primary_key "NomorByr"
      t.integer "KodePsn",     null: false
      t.string "TanggalByr",   null: false, default: ""
      t.string "JumlahByr",    null: false, default: ""
      
      t.timestamps null: false
    end
  end
end
