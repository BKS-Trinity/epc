class Patient < ActiveRecord::Base
	has_one :medical_record, dependent: :destroy
	validates :firstname, presence: true,
	length: { in: 2..20 }
	validates :lastname, presence: true,
	length: { in: 2..20 }
end
