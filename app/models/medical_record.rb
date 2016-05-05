class MedicalRecord < ActiveRecord::Base
  belongs_to :patient
	has_many :medical_cases, dependent: :destroy
end
