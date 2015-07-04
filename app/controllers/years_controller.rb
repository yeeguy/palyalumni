class YearsController < ApplicationController
	before_action :set_year

	def classmates
		@classmates = User.where(:year => @year).all.sort{|a,b| a.name <=> b.name}

	end

	protected

	def set_year
		@year = current_user.year
	end
end
