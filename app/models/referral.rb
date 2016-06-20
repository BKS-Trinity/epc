class Referral < ActiveRecord::Base
  belongs_to :medical_case
	validates :to, presence: true,
	length: { in: 2..50 }
end
