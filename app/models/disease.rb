class Disease < ActiveRecord::Base
	has_many :medical_cases, dependent: :destroy
	validates :name, presence: true,
	length: { in: 3..100 }
	validates :icd10, presence: true,
	length: { in: 3..5 }
end
