class DiseasesController < ApplicationController

	def new
		@disease = Disease.new
	end

	def create
		@disease = Disease.new(disease_params)
		
		if @disease.save
			redirect_to @disease
		else
			render 'new'
		end
	end
	
	def show
		@disease = Disease.find(params[:id])
	end
	
	def index
		@diseases = Disease.all
	end
	
	def edit
		@disease = Disease.find(params[:id])
	end
	
	def update
		@disease = Disease.find(params[:id])
		
		if @disease.update(disease_params)
			redirect_to @disease
		else
			render 'edit'
		end
	end
	
	def destroy
		@disease = Disease.find(params[:id])
		@disease.destroy
		
		redirect_to diseases_path
	end
	
	private
		def disease_params
			params.require(:disease).permit(:name, :icd10)
		end
	
end
