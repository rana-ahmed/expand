class TutorialLink < ActiveRecord::Base
	validates :title, :link, :user_id, :tutorial_id, presence: true
	validates :link, format: { with: URI::regexp(%w(http https)),
    message: "not valid, Url must with http:// || https://" }

	belongs_to :tutorial
	belongs_to :user
	acts_as_votable
end
