class TutorialsController < ApplicationController
	def index
		@data = Tutorial.all.order(category: :asc)
	end

	def show
		@data = Tutorial.where(category: params[:id].gsub("-", " ")).take
	end
end
