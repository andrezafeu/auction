class UsersController < ApplicationController
	def index
		@users = User.order(name: :asc).limit(10)
		render "index"
	end
	def show
	end
	def create
		@the_user  = User.new(
			:name => params[:user][:name],
			:email => params[:user][:email]
		)
	end
	def destroy
	end
end
