class Drug < ActiveRecord::Base
	has_many :prescriptiondrugs
	has_many :prescriptions, through: :prescriptiondrugs
end
