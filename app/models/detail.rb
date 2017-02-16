class Detail < ActiveRecord::Base
  self.table_name = "Detail"
  self.primary_key = "NomorResep"
  before_create :set_id
  
  def set_id
    last_number = Detail.maximum(:NomorResep)
    self.NomorResep = last_number.to_i + 1
  end
end
