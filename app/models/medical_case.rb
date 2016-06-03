class MedicalCase < ActiveRecord::Base
  belongs_to :medical_record
  belongs_to :disease
  belongs_to :doctor
	has_many :appointments, dependent: :destroy
	has_many :referrals, dependent: :destroy
	has_many :prescriptions, dependent: :destroy
	validates :doctor_id, numericality: { only_integer: true, greater_than: 0 }
end
