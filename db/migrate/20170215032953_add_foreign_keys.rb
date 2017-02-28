class AddForeignKeys < ActiveRecord::Migration
  def change
    add_reference :details, :medicine, index: true, foreign_key: true
    add_reference :recipes, :doctor, index: true, foreign_key: true
    add_reference :recipes, :patient, index: true, foreign_key: true
    add_reference :recipes, :polyclinic, index: true, foreign_key: true
    add_reference :doctors, :polyclinic, index: true, foreign_key: true
    add_reference :registrations, :doctor, index: true, foreign_key: true
    add_reference :registrations, :patient, index: true, foreign_key: true
    add_reference :registrations, :polyclinic, index: true, foreign_key: true
    add_reference :payments, :patient, index: true, foreign_key: true
  end
end
