class Product < ActiveRecord::Base		
	has_many :bids
	has_many :reviews
end
