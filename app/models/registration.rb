class Registration < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient
	belongs_to :polyclinic
end
