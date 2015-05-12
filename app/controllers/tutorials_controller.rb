class TutorialsController < ApplicationController
	before_action :require_login, except: [:index, :show]
	before_action :check_admin, only: [:new, :create]

	def new
		@tutorial = Tutorial.new
		@data = Tutorial.all
	end

	def create
		@tutorial = Tutorial.new(tutorial_params)
		@data = Tutorial.all
		if @tutorial.save
			redirect_to :back, notice: 'Category Added'
		else
			render :new
		end
	end

	def index
		@data = Tutorial.all.order(category: :asc)
	end

	def show
		@category = params[:id].gsub("-", " ")
		@tutorial = Tutorial.where(category: @category).take
		@data = TutorialLink.where(tutorial_id: @tutorial.id).take
	end

	def like
		@link = TutorialLink.find(params[:id])
		@link.liked_by current_user
		redirect_to :back
	end

	private
	def tutorial_params
		params.require(:tutorial).permit(:category)
	end
end
