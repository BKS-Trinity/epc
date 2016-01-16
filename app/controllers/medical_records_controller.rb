class MedicalRecordsController < ApplicationController

	def create
		@patient = Patient.find(params[:patient_id])
		@medical_record = @patient.create_medical_record()
		redirect_to patient_path(@patient)
	end
	
end
