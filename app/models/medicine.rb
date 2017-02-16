class Medicine < ActiveRecord::Base
  self.table_name = "Obat"
  self.primary_key = "KodeObat"
  before_create :set_id
  
  def set_id
    last_number = Medicine.maximum(:KodeObat)
    self.KodeObat = last_number.to_i + 1
  end
end
