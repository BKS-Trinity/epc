class PrescriptiondrugsController < ApplicationController

	def new
		@prescription = Prescription.find(params[:prescription_id])
		@prescriptiondrug = @prescription.prescriptiondrugs.new
	end

	def create
		@prescription = Prescription.find(params[:prescription_id])
		@prescriptiondrug = @prescription.prescriptiondrugs.new(prescriptiondrug_params)
		
		if @prescriptiondrug.save
			redirect_to medical_case_prescription_url(@prescription.medical_case, @prescription)
		else
			render 'new'
		end
	end
	
	def destroy
		@prescription = Prescription.find(params[:prescription_id])
		@prescriptiondrug = @prescription.prescriptiondrugs.find(params[:id])
		@prescriptiondrug.destroy
		redirect_to medical_case_prescription_url(@prescription.medical_case, @prescription)
	end
	
	private
		def prescriptiondrug_params
			params.require(:prescriptiondrug).permit(:prescription_id, :drug_id)
		end
	
end
