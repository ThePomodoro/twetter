# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
w = User.create!(name: "John Appleseed", username: "john", email: "john@ibm.com", password: "12341234")
w = User.create!(name: "Cindy Pindy", username: "cindy", email: "cindy@oracle.com", password: "12341234")
w = User.create!(name: "Steve Jobs", username: "steve", email: "steve@apple.com", password: "12341234")
w = User.create!(name: "Mike Stipes", username: "striper", email: "mike@sun.com", password: "12341234")
w = User.create!(name: "Mike Paperclip", username: "microsoftbob", email: "bob@microsoft.com", password: "12341234")

for f in 1..75
	user_id = 1 + rand(4)
	content = Faker::Company.catch_phrase 
	w = Twet.create!(user_id: user_id, content: content)
end
