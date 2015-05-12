# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Admin.destroy_all
Tutorial.destroy_all

user = User.create(name: 'Minuddin Ahmed Rana', email: 'minuddinrana@gmail.com', image: 'https://lh4.googleusercontent.com/-BTbrOrQZi-4/AAA', profile: 'https://plus.google.com/+MinuddinAhmedRanaa')
Admin.create(user_id: user.id)
Tutorial.create([{ category: 'HTML' }, { category: 'CSS' }, { category: 'C' }])