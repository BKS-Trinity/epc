class Patient < ActiveRecord::Base
	validates :firstname, presence: true,
	length: { in: 2..20 }
	validates :lastname, presence: true,
	length: { in: 2..20 }
end
