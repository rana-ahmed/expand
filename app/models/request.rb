class Request < ActiveRecord::Base
	validates :category, :link, presence: true
	validates :link, format: { with: URI::regexp(%w(http https)),
    message: "not valid, Url must with http:// || https://" }
	belongs_to :user
end
