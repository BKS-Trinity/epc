class PrescriptionsController < ApplicationController

	def new
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@prescription = @medical_case.prescriptions.new
	end

	def create
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@prescription = @medical_case.prescriptions.new(prescription_params)
		
		if @prescription.save
			redirect_to medical_case_prescription_url(@medical_case, @prescription)
		else
			render 'new'
		end
	end
	
	def show
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@prescription = @medical_case.prescriptions.find(params[:id])
	end
	
	def index
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@prescriptions = @medical_case.prescriptions
	end
	
	def edit
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@prescription = @medical_case.prescriptions.find(params[:id])
	end
	
	def update
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@prescription = @medical_case.prescriptions.find(params[:id])
		
		if @prescription.update(prescription_params)
			redirect_to medical_case_prescription_url(@medical_case, @prescription)
		else
			render 'edit'
		end
	end
	
	def destroy
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@prescription = @medical_case.prescriptions.find(params[:id])
		@prescription.destroy
		redirect_to medical_case_prescriptions_path
	end
	
	private
		def prescription_params
			params.require(:prescription).permit(:medical_case_id, :dateofwriteout, :expirydate)
		end

end
