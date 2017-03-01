class Medicine < ActiveRecord::Base;
	validates :name, :types_of_medicine, :category, :price, :amount, presence: true
	validate :same_name

	def same_name
		errors.add(:name, "Data already exists") if Medicine.exists?(name: self.name)
	end
end
