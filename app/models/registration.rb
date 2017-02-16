class Registration < ActiveRecord::Base
  self.table_name = "Pendaftaran"
  self.primary_key = "NomorPendf"
  before_create :set_id
  
  def set_id
    last_number = Registration.maximum(:NomorPendf)
    self.NomorPendf = last_number.to_i + 1
  end
end
