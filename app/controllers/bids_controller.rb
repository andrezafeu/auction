class BidsController < ApplicationController
	def create
		@the_bid = Bid.new(
		:value => params[:product][:value]
		)
		@the_bid.save
		redirect_to "/products/#{@the_bid.id}"
	end
end
