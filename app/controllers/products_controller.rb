class ProductsController < ApplicationController
	def index
		@products = Product.order(created_at: :desc).limit(10)
		render 'index'
	end
	def new
		@the_product = Product.new
		render 'new'
	end
	def create
		@the_product = Product.new(
			:title => params[:product][:title],
			:description => params[:product][:description],
			:bidding => params[:product][:bidding])
		@the_product.save
		redirect_to "/products/saved"
		# redirect_to "/products/#{@my_product.id}"
	end
	def saved
		render 'saved'
	end
	# def save
	# 	@the_product.save
	# end
end
