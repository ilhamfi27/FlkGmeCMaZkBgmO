class Polyclinic < ActiveRecord::Base
  self.table_name = "Poliklinik"
  self.primary_key = "KodePlk"
  before_create :set_id
  
  def set_id
    last_number = Polyclinic.maximum(:KodePlk)
    self.KodePlk = last_number.to_i + 1
  end
end
