class AppointmentsController < ApplicationController

	def new
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@appointment = @medical_case.appointments.new
	end

	def create
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@appointment = @medical_case.appointments.new(appointment_params)
		
		if @appointment.save
			redirect_to medical_case_appointment_url(@medical_case, @appointment)
		else
			render 'new'
		end
	end
	
	def show
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@appointment = @medical_case.appointments.find(params[:id])
	end
	
	def index
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@appointments = @medical_case.appointments
	end
	
	def edit
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@appointment = @medical_case.appointments.find(params[:id])
	end
	
	def update
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@appointment = @medical_case.appointments.find(params[:id])
		
		if @appointment.update(appointment_params)
			redirect_to medical_case_appointment_url(@medical_case, @appointment)
		else
			render 'edit'
		end
	end
	
	def destroy
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@appointment = @medical_case.appointments.find(params[:id])
		@appointment.destroy
		redirect_to medical_case_appointments_path
	end
	
	private
		def appointment_params
			params.require(:appointment).permit(:medical_case_id, :year, :month, :day, :hour, :minute)
		end

end
