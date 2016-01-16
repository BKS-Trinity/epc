class MedicalRecordsController < ApplicationController

	def create
		@patient = Patient.find(params[:patient_id])
		@medical_record = @patient.create_medical_record()
		redirect_to patient_path(@patient)
	end
	
	def destroy
		@patient = Patient.find(params[:patient_id])
		@medical_record = @patient.medical_record
		@medical_record.destroy
		redirect_to patient_path(@patient)
	end
	
end
