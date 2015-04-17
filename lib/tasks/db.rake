namespace :db do
  desc "Create some fake data"
  task generate: :environment do
  	require 'populator'
	require 'faker'
	Tutorial.populate 20 do |tutorial|
		tutorial.category = Faker::Name.name
		tutorial.active = 1
	end
	puts 'done' 
  end

end
