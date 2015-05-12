namespace :db do
	################## DON'T USE THIS SCRIPT ###########################
	####################### THANK YOU ##################################
  desc "Create some fake data"
  task generate: :environment do
  	require 'populator'
	require 'faker'

	puts "Deleting All Record........"
	[Tutorial, TutorialLink].each(&:delete_all)
	puts "Deleting Complete"
	puts "Generating New Data"
	user = User.last
	user_id = user.id
	Tutorial.populate 20 do |tutorial|
		tutorial.category = Faker::Lorem.word
		TutorialLink.populate 20 do |tutorial_link|
			tutorial_link.tutorial_id = tutorial.id
			tutorial_link.user_id = user.id
			tutorial_link.title = Faker::Lorem.sentence(3)
			tutorial_link.link = Faker::Internet.url
		end
	end
	puts 'Done' 
  end
end
