class User < ActiveRecord::Base

	has_many :tutorial_links, dependent: :destroy 

	validates :email, uniqueness: true

	def self.catch_user(auth)
		where(email: auth['info']['email']).first || keep_user(auth)
	end
	def self.keep_user(auth)
		user = User.new
		user.email = auth['info']['email']
		user.name = auth['info']['name']
		user.image = auth['info']['image']
		user.save
		user
	end
end
