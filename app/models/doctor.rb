class Doctor < ActiveRecord::Base
  self.table_name = "Dokter"
  self.primary_key = "KodeDkt"
  before_create :set_id
  
  def set_id
    last_number = Doctor.maximum(:KodeDkt)
    self.KodeDkt = last_number.to_i + 1
  end
end
