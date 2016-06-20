class Appointment < ActiveRecord::Base
  belongs_to :medical_case
	validates :year, presence: true, numericality: { only_integer: true },
	length: { is: 4 }
	validates :month, presence: true, numericality: { only_integer: true },
	length: { in: 1..2 }
	validates :day, presence: true, numericality: { only_integer: true },
	length: { in: 1..2 }
	validates :hour, presence: true, numericality: { only_integer: true },
	length: { in: 1..2 }
	validates :minute, presence: true, numericality: { only_integer: true },
	length: { in: 1..2 }
end
