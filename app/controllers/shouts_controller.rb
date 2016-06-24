class ShoutsController < ApplicationController

	def show
		@shout = Shout.find(params[:id])
	end

	def create
		shout = current_user.shouts.build(shout_params)
		
		if shout.save
			redirect_to dashboard_url
		else
			flash.alert = 'Could not shout'
			redirect_to dashboard_url
		end
	end

	private

		def shout_params
			params.require(:shout).permit(:body)
		end

end