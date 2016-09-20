# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(email: "default@example.com", password: "Password1")

user2 = User.create(
	email: "follower@example.com", password: "Password1")

user3 = User.create(email: "follower2@example.com", password: "Password1")

Follower.create(user_id: user1.id, follower_id: user2.id)
Follower.create(user_id: user1.id, follower_id: user3.id)

user2_image1 = Image.create(caption: "First Pic", image_url: "uploads/user2/first_pic.png", likes: 31, user_id: user2.id, created_at: Time.now) 
user3_image1 = Image.create(caption: "First Pic", image_url: "uploads/user3/first_pic.png", likes: 21, user_id: user3.id, created_at: Time.now + 10) 
user2_image2 = Image.create(caption: "Second Pic", image_url: "uploads/user2/second_pic.png", likes: 31, user_id: user2.id, created_at: Time.now + 60) 