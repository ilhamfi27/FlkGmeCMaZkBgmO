class CreatePolyclinicTable < ActiveRecord::Migration
  def change
    create_table "Poliklinik", id: false do |t|
      t.primary_key "KodePlk"
      t.string "NamaPlk",  null: false, default: ""

      t.timestamps null: false
    end
  end
end
