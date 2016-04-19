class MedicalCase < ActiveRecord::Base
  belongs_to :medical_record
  belongs_to :disease
  belongs_to :doctor
	validates :doctor_id, numericality: { only_integer: true, greater_than: 10 }
end
