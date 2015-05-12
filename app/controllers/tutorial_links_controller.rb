class TutorialLinksController < ApplicationController
	before_action :check_admin
	def new
	    @tutorialLink = TutorialLink.new
  	end

	def accept
	    @request = Request.find(params[:id])
	    @tutorialLink = TutorialLink.new
  	end

  	def create
  		if params[:tutorial_link][:request]
  			@request = Request.find(params[:tutorial_link][:request])
	    	@tutorialLink = TutorialLink.new(tutorial_link_accept_params)
	    	if User.exists?(@tutorialLink.user_id)
	      		if @tutorialLink.save
	        		@request.destroy
	        		redirect_to requests_path, notice: 'New Tutorial Created'
	      		else
	      			render :accept
	      		end
	    	else
	    		#Here is a problem, this flash message show two times, leter i need to solve this
	    		flash[:notice] = 'User id is not valid'
	      		render :accept
	    	end
	    else
	    	@tutorialLink = current_user.tutorial_links.build(tutorial_link_new_params)
	    	if @tutorialLink.save
	        	redirect_to new_tutorial_link_path, notice: 'New Tutorial Created'
	      	else
	      		render :new
	      	end
  		end
  	end

	private
	def tutorial_link_accept_params
		params.require(:tutorial_link).permit(:title, :link, :user_id, :tutorial_id)
	end
	private
	def tutorial_link_new_params
		params.require(:tutorial_link).permit(:title, :link, :tutorial_id)
	end
end
