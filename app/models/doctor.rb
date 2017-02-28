class Doctor < ActiveRecord::Base
  belongs_to :polyclinic
  validates :name, :specialist, :address, :phone_number, :fee, :polyclinic_id, presence: true
end
