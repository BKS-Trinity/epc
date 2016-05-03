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
	
	def edit
		@medical_record = MedicalRecord.find(params[:medical_record_id])
		@medical_case = @medical_record.medical_cases.find(params[:id])
	end
	
	def update
		@medical_record = MedicalRecord.find(params[:medical_record_id])
		@medical_case = @medical_record.medical_cases.find(params[:id])
		
		if @medical_case.update(medical_case_params)
			redirect_to medical_record_medical_case_url(@medical_record, @medical_case)
		else
			render 'edit'
		end
	end
	
	def destroy
		@medical_record = MedicalRecord.find(params[:medical_record_id])
		@medical_case = @medical_record.medical_cases.find(params[:id])
		@medical_case.destroy
		redirect_to medical_record_medical_cases_path
	end
	
	private
		def medical_case_params
			params.require(:medical_case).permit(:medical_record_id, :onsetofdisease, :disease_id, :doctor_id)
		end
	
end
