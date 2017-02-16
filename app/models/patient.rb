class Patient < ActiveRecord::Base
  self.table_name = "Pasien"
  self.primary_key = "KodePsn"
  before_create :set_id
  
  def set_id
    last_number = Patient.maximum(:KodePsn)
    self.KodePsn = last_number.to_i + 1
  end
end
