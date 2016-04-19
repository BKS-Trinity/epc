class MedicalCasesController < ApplicationController

	def new
		@medical_record = MedicalRecord.find(params[:medical_record_id])
		@medical_case = @medical_record.medical_cases.new
	end

	def create
		@medical_record = MedicalRecord.find(params[:medical_record_id])
		@medical_case = @medical_record.medical_cases.new(medical_case_params)
		
		if @medical_case.save
			redirect_to medical_record_medical_case_url(@medical_record, @medical_case)
		else
			render 'new'
		end
	end
	
	def show
		@medical_record = MedicalRecord.find(params[:medical_record_id])
		@medical_case = @medical_record.medical_cases.find(params[:id])
	end
	
	def index
		@medical_record = MedicalRecord.find(params[:medical_record_id])
		@medical_cases = @medical_record.medical_cases
	end
	
	private
		def medical_case_params
			params.require(:medical_case).permit(:medical_record_id, :onsetofdisease, :disease_id, :doctor_id)
		end
	
end
