class Patient < ActiveRecord::Base
	has_one :medical_record, dependent: :destroy
	validates :firstname, presence: true,
	length: { in: 2..20 }
	validates :middlename, allow_blank: true,
	length: { in: 2..20 }
	validates :lastname, presence: true,
	length: { in: 2..20 }
	validates :email, uniqueness: true, allow_blank: true,
	length: { in: 5..20 }
	validates :phone, allow_blank: true,
	length: { in: 9..15 }
	validates :mobile, allow_blank: true,
	length: { in: 9..15 }
	validates :street, presence: true,
	length: { in: 2..50 }
	validates :city, presence: true,
	length: { in: 2..50 }
	validates :postcode, presence: true,
	length: { is: 6 }
	validates :state, presence: true,
	length: { in: 2..50 }
	validates :country, presence: true,
	length: { in: 2..50 }
end
