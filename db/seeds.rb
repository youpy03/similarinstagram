# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do |n|
  email = Faker::Internet.email
  name = Faker::Name.name
  password = "password"
  User.create!(email: email,
               password: password,
               password_confirmation: password,
               name: name,
               )
 end


 	# Image.seed do |s|
  # 	 s.use_id = rand(1..100)
  # 	 s.content = Rails.root.join("db/fixtures/images/seedimage.jpg").open
  #   end
image_path = File.join(Rails.root, "db/fixtures/images/seedimage.png")
5.times do |n|
	 #user_id = rand(1..100)
	 Picture.create!(image: File.new(image_path))
 			        	
 end
