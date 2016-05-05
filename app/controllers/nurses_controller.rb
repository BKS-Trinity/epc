class NursesController < ApplicationController

	def new
		@nurse = Nurse.new
	end
	
	def create
		@nurse = Nurse.new(nurse_params)
		
		if @nurse.save
			redirect_to @nurse
		else
			render 'new'
		end
	end
	
	def show
		@nurse = Nurse.find(params[:id])
	end
	
	def index
		@nurses = Nurse.all
	end
	
	def edit
		@nurse = Nurse.find(params[:id])
	end
	
	def update
		@nurse = Nurse.find(params[:id])
		
		if @nurse.update(nurse_params)
			redirect_to @nurse
		else
			render 'edit'
		end
	end
	
	def destroy
		@nurse = Nurse.find(params[:id])
		@nurse.destroy
		
		redirect_to nurses_path
	end
	
	private
		def nurse_params
			params.require(:nurse).permit(:firstname, :middlename, :lastname, :dateofbirth, :sex, :email, :phone, :mobile, :street, :city, :postcode, :state, :country)
		end

end
