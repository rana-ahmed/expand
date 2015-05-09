class TutorialLink < ActiveRecord::Base
	belongs_to :tutorial
	belongs_to :user
	acts_as_votable
end
