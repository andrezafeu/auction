class ProductsController < ApplicationController
	def new
		@the_product = Product.new
		render 'new'
	end
end
