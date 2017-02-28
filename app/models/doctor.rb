class Doctor < ActiveRecord::Base
	has_one :registration
  belongs_to :polyclinic
  validates :name, :specialist, :address, :phone_number, :fee, :polyclinic_id, presence: true
end
