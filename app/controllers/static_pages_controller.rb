class StaticPagesController < ApplicationController

	def home
		@products=Product.all
	end

	def about_us		
	end

	def contact 
	end
	
	def contact 
		@products=Product.all
	end

end