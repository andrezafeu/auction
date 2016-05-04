class BidsController < ApplicationController
	def create
		@the_bid = Bid.new()
		# @the_bid.save
		# redirect_to "/products/#{@the_bid.id}"
		
		if @my_bid.save
			redirect_to action: "index", controller: "bids", 
			product_id: @my_product.id
		else
			render "new"
		end
	end
	#do private method for entry_params
end
