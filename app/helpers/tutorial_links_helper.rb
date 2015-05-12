module TutorialLinksHelper
	def getImage(tutorial_link)
		@user = User.find(tutorial_link.user_id)
		@user
	end
end
