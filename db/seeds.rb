# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(first_name: "Luke", last_name: "Skywalker", email: "luke@email.com", username: "luke2011", password: "password", password_confirmation: "password", admin: true, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!")
User.create(first_name: "Cloud", last_name: "Strife", email: "cloud@email.com", username: "cloud2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!")
User.create(first_name: "Tink", last_name: "OBoyle", email: "tink@email.com", username: "tink2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!")