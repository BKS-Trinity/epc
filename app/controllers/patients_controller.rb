class PatientsController < ApplicationController

	def new
		@patient = Patient.new
	end
	
	def create
		@patient = Patient.new(patient_params)
		
		if @patient.save
			redirect_to @patient
		else
			render 'new'
		end
	end
	
	def show
		@patient = Patient.find(params[:id])
	end
	
	def index
		@patients = Patient.all
	end
	
	private
		def patient_params
			params.require(:patient).permit(:firstname, :middlename, :lastname, :dateofbirth, :sex, :email, :phone, :mobile, :street, :city, :postcode, :state, :country)
		end
	
end
