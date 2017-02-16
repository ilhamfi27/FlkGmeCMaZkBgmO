class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key "Detail", "Obat", column: "KodeObat", primary_key: "KodeObat", on_delete: :cascade
    add_foreign_key "Resep", "Dokter", column: "KodeDkt", primary_key: "KodeDkt", on_delete: :cascade
    add_foreign_key "Resep", "Pasien", column: "KodePsn", primary_key: "KodePsn", on_delete: :cascade
    add_foreign_key "Resep", "Poliklinik", column: "kodePlk", primary_key: "kodePlk", on_delete: :cascade
    add_foreign_key "Dokter", "Poliklinik", column: "KodePlk", primary_key: "kodePlk", on_delete: :cascade
    add_foreign_key "Pendaftaran", "Dokter", column: "KodeDkt", primary_key: "KodeDkt", on_delete: :cascade
    add_foreign_key "Pendaftaran", "Pasien", column: "KodePsn", primary_key: "KodePsn", on_delete: :cascade
    add_foreign_key "Pendaftaran", "Poliklinik", column: "kodePlk", primary_key: "kodePlk", on_delete: :cascade
    add_foreign_key "Pembayaran", "Pasien", column: "KodePsn", primary_key: "KodePsn", on_delete: :cascade
  end
end
