class ReferralsController < ApplicationController

	def new
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@referral = @medical_case.referrals.new
	end

	def create
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@referral = @medical_case.referrals.new(referral_params)
		
		if @referral.save
			redirect_to medical_case_referral_url(@medical_case, @referral)
		else
			render 'new'
		end
	end
	
	def show
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@referral = @medical_case.referrals.find(params[:id])
	end
	
	def index
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@referrals = @medical_case.referrals
	end
	
	def edit
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@referral = @medical_case.referrals.find(params[:id])
	end
	
	def update
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@referral = @medical_case.referrals.find(params[:id])
		
		if @referral.update(referral_params)
			redirect_to medical_case_referral_url(@medical_case, @referral)
		else
			render 'edit'
		end
	end
	
	def destroy
		@medical_case = MedicalCase.find(params[:medical_case_id])
		@referral = @medical_case.referrals.find(params[:id])
		@referral.destroy
		redirect_to medical_case_referrals_path
	end
	
	private
		def referral_params
			params.require(:referral).permit(:medical_case_id, :dateofwriteout, :expirydate, :to, :note)
		end

end
