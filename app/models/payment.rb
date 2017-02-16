class Payment < ActiveRecord::Base
  self.table_name = "Pembayaran"
  self.primary_key = "NomorByr"
  before_create :set_id
  
  def set_id
    last_number = Payment.maximum(:NomorByr)
    self.NomorByr = last_number.to_i + 1
  end
end
