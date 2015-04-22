class TutorialsController < ApplicationController
	def index
		@data = Tutorial.all.order(category: :asc)
	end
end
