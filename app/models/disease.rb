class Disease < ActiveRecord::Base
	has_many :medical_cases, dependent: :destroy
end
