class TutorialsController < ApplicationController
	def index
		@data = Tutorial.all.order(category: :asc)
	end

	def show
		@category = params[:id].gsub("-", " ")
	end
end
