class TutorialsController < ApplicationController
	before_action :requir_login, except: [:index, :show]

	def index
		@data = Tutorial.all.order(category: :asc)
	end

	def show
		@data = Tutorial.where(category: params[:id].gsub("-", " ")).take
	end

	def like
		@link = TutorialLink.find(params[:id])
		@link.liked_by current_user
		redirect_to :back
	end
end
