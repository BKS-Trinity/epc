class Prescriptiondrug < ActiveRecord::Base
	belongs_to :prescription
	belongs_to :drug
end
