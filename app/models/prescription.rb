class Prescription < ActiveRecord::Base
  belongs_to :medical_case
	has_many :prescriptiondrugs
	has_many :drugs, through: :prescriptiondrugs
end
