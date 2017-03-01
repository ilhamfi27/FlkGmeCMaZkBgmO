class Polyclinic < ActiveRecord::Base
	has_one :registration
  has_many :doctors
  validate :same_name

	def same_name
		errors.add(:name, "Data already exists") if Polyclinic.exists?(name: self.name)
	end
end
