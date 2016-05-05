class Doctor < ActiveRecord::Base
	has_many :medical_cases, dependent: :destroy
end
