class PatientsController < ApplicationController

	def new
	end
	
	def create
	
		@patient = Patient.new(patient_params)
		
		@patient.save
		redirect_to @patient
		
	end
	
	def show
		@patient = Patient.find(params[:id])
	end
	
	private
		def patient_params
			params.require(:patient).permit(:firstname, :middlename, :lastname, :dateofbirth, :sex, :email, :phone, :mobile, :street, :city, :postcode, :state, :country)
		end
	
end
