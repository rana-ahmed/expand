class TutorialLink < ActiveRecord::Base
	belongs_to :tutorial
	acts_as_votable
end
