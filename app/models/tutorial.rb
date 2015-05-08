class Tutorial < ActiveRecord::Base

	has_many :tutorial_links, dependent: :destroy

	def slug
		category.gsub(" ", "-")
	end

	def to_param
		"#{slug}"
	end
end
