class Appointment < ActiveRecord::Base
  belongs_to :medical_case
end
