class Tutorial < ActiveRecord::Base

	def slug
		category.gsub(" ", "-")
	end

	def to_param
		"#{slug}"
	end
end
