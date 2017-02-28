class Patient < ActiveRecord::Base
	has_one :registration
end
