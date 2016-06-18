class Drug < ActiveRecord::Base
	has_many :prescriptiondrugs
	has_many :prescriptions, through: :prescriptiondrugs
	validates :name, presence: true,
	length: { in: 3..50 }
	validates :atc, presence: true,
	length: { in: 7..8 }
end
