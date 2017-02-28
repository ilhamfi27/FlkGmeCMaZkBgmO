class Polyclinic < ActiveRecord::Base
	has_one :registration
  has_many :doctors
  validates :name, presence: true
end
