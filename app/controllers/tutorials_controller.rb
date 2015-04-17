class TutorialsController < ApplicationController
	def index
		@all = Tutorial.all
	end
end
