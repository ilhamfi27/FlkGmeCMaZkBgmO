class Polyclinic < ActiveRecord::Base
  has_many :doctors
  validates :name, presence: true
end
