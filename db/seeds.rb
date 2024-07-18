# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

##SEED FILE READ ME: You must disable all associations within the app before running this script. 

###SYSTEM DATA, THIS IS REAL DATA COMPILED FOR THE APP, NEEDS TO BE IN DATABASE TO RUN###
# Clear existing data (optional)
# System.destroy_all

# # Systems and Companies Hash
# systems = {
#   "Nintendo Entertainment System" => "Nintendo", "Super Nintendo Entertainment System" => "Nintendo",
#   "Nintendo 64" => "Nintendo", "GameCube" => "Nintendo",
#   "Wii" => "Nintendo", "Wii U" => "Nintendo",
#   "Nintendo Switch" => "Nintendo", "Game Boy" => "Nintendo",
#   "Game Boy Color" => "Nintendo", "Game Boy Advance" => "Nintendo",
#   "Nintendo DS" => "Nintendo", "Nintendo 3DS" => "Nintendo",
#   "PlayStation" => "Sony", "PlayStation 2" => "Sony",
#   "PlayStation 3" => "Sony", "PlayStation 4" => "Sony",
#   "PlayStation 5" => "Sony", "PlayStation Portable" => "Sony",
#   "PlayStation Vita" => "Sony", "Xbox" => "Microsoft",
#   "Xbox 360" => "Microsoft", "Xbox One" => "Microsoft",
#   "Xbox Series X" => "Microsoft", "Xbox Series S" => "Microsoft",
#   "PC" => "Various", "Sega Master System" => "Sega",
#   "Sega Genesis" => "Sega", "Sega Saturn" => "Sega",
#   "Sega Dreamcast" => "Sega", "Atari 2600" => "Atari",
#   "Atari 5200" => "Atari", "Atari 7800" => "Atari",
#   "Atari Jaguar" => "Atari", "ColecoVision" => "Coleco",
#   "Intellivision" => "Mattel", "Neo Geo" => "SNK",
#   "Neo Geo Pocket" => "SNK", "TurboGrafx-16" => "NEC",
#   "Philips CD-i" => "Philips", "Magnavox Odyssey" => "Magnavox",
#   "Commodore 64" => "Commodore", "Amiga" => "Commodore",
#   "3DO" => "Panasonic", "Vectrex" => "MB",
#   "WonderSwan" => "Bandai", "WonderSwan Color" => "Bandai",
#   "N-Gage" => "Nokia", "Ouya" => "Ouya",
#   "Stadia" => "Google"
# }

# System.transaction do
#   systems.each do |name, company|
#     system = System.new(
#       name: name,
#       company: company
#     )
#     system.save!(validate: false)
#   end
# end

# puts "Systems seeded successfully!"


# # # ###USERS SEED DATA FOR TESTING###
# # Clear existing data (optional)
# User.destroy_all

# # Users data
# users = [
#   { first_name: "Luke", last_name: "Skywalker", email: "luke@email.com", username: "luke2011", password: "password", password_confirmation: "password", admin: true, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!" },
#   { first_name: "Cloud", last_name: "Strife", email: "cloud@email.com", username: "cloud2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!" },
#   { first_name: "Tink", last_name: "OBoyle", email: "tink@email.com", username: "tink2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!" },
#   { first_name: "John", last_name: "Sheppard", email: "john@email.com", username: "john2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!" },
#   { first_name: "Bob", last_name: "Belcher", email: "bob@email.com", username: "bob2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!" },
#   { first_name: "Han", last_name: "Solo", email: "han@email.com", username: "han2011", password: "password", password_confirmation: "password", admin: true, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRexqD6RjeY68NmEB1qkFNG0CDgZONyoM2NVA&s", about_me: "Never tell me the odds." },
#   { first_name: "Sephiroth", last_name: "Roth", email: "sephiroth@email.com", username: "sephiroth2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFL3F_DaM6t_e3Ixyu4aZhwkJm-jcIa0RfLQ&s", about_me: "I will... never be a memory." },
#   { first_name: "Link", last_name: "Hyrule", email: "link@email.com", username: "link2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfD3lMFTi3f1j3ZKwZBcdWtkKNRy8-dDpF3Q&s", about_me: "Courage need not be remembered, for it is never forgotten." }
# ]

# User.transaction do
#   users.each do |user_data|
#     user = User.new(user_data)
#     user.save!(validate: false)
#   end
# end

# puts "Users seeded successfully!"


# ##GENRE SEED DATA (DESIGNED TO FUNCTION DESPITE ASSOCIATIONS AND VALIDATIONS)
# Genre.destroy_all

# # Hash of Genres and Descriptions
# genres = {
#   "RPG-Role Playing Game" => "Embark on epic quests, leveling up your character and fighting monsters in immersive worlds.",
#   "Adventure" => "Explore mysterious lands, solve puzzles, and unravel thrilling narratives.",
#   "Sports" => "Compete in realistic or fantastical sports events and lead your team to victory.",
#   "Puzzle" => "Challenge your brain with intricate puzzles and logic-based gameplay.",
#   "Stealth" => "Sneak past enemies, use stealth tactics, and complete covert missions.",
#   "Platformer" => "Jump across platforms, defeat enemies, and collect power-ups in vibrant worlds.",
#   "Strategy" => "Plan your moves carefully and outsmart your opponents in strategic battles.",
#   "Metroidvania" => "Explore interconnected worlds, unlock abilities, and defeat challenging bosses.",
#   "Action" => "Engage in intense combat and action-packed gameplay, defeating hordes of enemies.",
#   "Simulation" => "Simulate real-world activities or create your own virtual experiences.",
#   "MMO-RPG, Massively Multiplayer Online" => "Join massive online worlds, complete quests, and interact with thousands of players.",
#   "Survival" => "Gather resources, build shelters, and survive in harsh environments.",
#   "Real Time Strategy" => "Manage resources and armies, making real-time strategic decisions.",
#   "Battle Royale" => "Fight to be the last one standing in high-stakes matches.",
#   "Fighting" => "Engage in close combat and unleash powerful moves against opponents.",
#   "Shooter" => "Experience thrilling shootouts and intense firefights.",
#   "Survival Horror" => "Survive terrifying environments filled with monsters and limited resources.",
#   "First Person Shooter" => "Engage in fast-paced shooting from a first-person perspective.",
#   "Massively Multiplayer Online" => "Join huge multiplayer worlds and complete quests with friends.",
#   "Tactical RPG" => "Lead your team in tactical, turn-based battles with RPG elements."
# }

# Genre.transaction do
#   genres.each do |name, description|
#     genre = Genre.new(
#       name: name,
#       description: description
#     )
#     genre.save!(validate: false)
#   end
# end

# puts "Genres seeded successfully!"



# # # ### POST SEEDS, MAY CHANGE IN THE FUTURE TO INCLUDE IMAGES?##
# # Clear existing data (optional)
# Post.destroy_all

# # Specific Game Titles
# specific_game_titles = [
#   "Breaking The 3D Barrier for Platformers: How SM64 Changed the World!",
#   "Exploring Hyrule: The Open-World Mastery of Breath of the Wild",
#   "Unraveling the Mysteries of Rapture: The Legacy of BioShock",
#   "Surviving the Apocalypse: The Emotional Impact of The Last of Us",
#   "Reviving the Classics: How Final Fantasy VII Remake Modernized a Legend"
# ]

# # General Topic Titles
# general_topic_titles = [
#   "The Evolution of Open-World Games: From GTA to Breath of the Wild",
#   "Why Indie Games Are Taking Over: A Deep Dive into Stardew Valley",
#   "Top Ten Hidden Gems on the Nintendo Switch You Must Play",
#   "Exploring Virtual Reality: The Future of Immersive Gaming Experiences",
#   "The Rise of Esports: How Competitive Gaming Became a Global Phenomenon"
# ]

# # Create Posts
# posts_data = [
#   { user_id: 1, title: specific_game_titles[0], game_title: "Super Mario 64", genre_id: 6, system_id: 3, body: Faker::Lorem.paragraph(sentence_count: 40, supplemental: true, random_sentences_to_add: 6) },
#   { user_id: 5, title: specific_game_titles[1], game_title: "Breath of the Wild", genre_id: 2, system_id: 7, body: Faker::Lorem.paragraph(sentence_count: 40, supplemental: true, random_sentences_to_add: 6) },
#   { user_id: 4, title: specific_game_titles[2], game_title: "BioShock", genre_id: 18, system_id: 21, body: Faker::Lorem.paragraph(sentence_count: 40, supplemental: true, random_sentences_to_add: 6) },
#   { user_id: 4, title: specific_game_titles[3], game_title: "Last of Us", genre_id: 12, system_id: 16, body: Faker::Lorem.paragraph(sentence_count: 40, supplemental: true, random_sentences_to_add: 6) },
#   { user_id: 8, title: specific_game_titles[4], game_title: "Final Fantasy 7: Remake", genre_id: 1, system_id: 17, body: Faker::Lorem.paragraph(sentence_count: 40, supplemental: true, random_sentences_to_add: 6) },
#   { user_id: 3, title: general_topic_titles[0], game_title: nil, genre_id: nil, system_id: nil, body: Faker::Lorem.paragraph(sentence_count: 40, supplemental: true, random_sentences_to_add: 6) },
#   { user_id: 2, title: general_topic_titles[1], game_title: nil, genre_id: nil, system_id: nil, body: Faker::Lorem.paragraph(sentence_count: 40, supplemental: true, random_sentences_to_add: 6) },
#   { user_id: 1, title: general_topic_titles[2], game_title: nil, genre_id: nil, system_id: nil, body: Faker::Lorem.paragraph(sentence_count: 40, supplemental: true, random_sentences_to_add: 6) },
#   { user_id: 7, title: general_topic_titles[3], game_title: nil, genre_id: nil, system_id: nil, body: Faker::Lorem.paragraph(sentence_count: 40, supplemental: true, random_sentences_to_add: 6) },
#   { user_id: 6, title: general_topic_titles[4], game_title: nil, genre_id: nil, system_id: nil, body: Faker::Lorem.paragraph(sentence_count: 40, supplemental: true, random_sentences_to_add: 6) }
# ]

# Post.transaction do
#   posts_data.each do |post_data|
#     post = Post.new(post_data)
#     post.save!(validate: false)
#   end
# end

# puts "Posts seeded successfully!"



# # # # ###FAQ SEED--> I PLAN ON ADJUSTING THIS EVENTUALLY BUT FOR MVP PURPOSES THIS IS FINE###
# # Clear existing data (optional)
# Faq.destroy_all

# # Questions data
# questions = [
#   {user_id: 3, question: "Is there a shortcut in Pillar of Autumn?", game_title: "Halo: Combat Evolved", genre_id: 18, system_id: 20, description: Faker::Lorem.paragraph(sentence_count: 4)},
#   {user_id: 2, question: "What chests to avoid to get Zodiac Spear?", game_title: "Final Fantasy 12", genre_id: 1, system_id: 22, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 8, question: "Help! I cannot beat Dracula?!", game_title: "Castlevania", genre_id: 8, system_id: 4, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 4, question: "Where to find the Master Sword?", game_title: "The Legend of Zelda: Breath of the Wild", genre_id: 2, system_id: 7, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 5, question: "How to unlock all characters?", game_title: "Super Smash Bros. Ultimate", genre_id: 15, system_id: 7, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 2, question: "Tips for defeating Sephiroth?", game_title: "Final Fantasy VII", genre_id: 1, system_id: 13, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 7, question: "How to find all Chaos Emeralds?", game_title: "Sonic the Hedgehog", genre_id: 9, system_id: 27, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 3, question: "Best strategy for taking down a Juggernaut?", game_title: "Call of Duty: Modern Warfare", genre_id: 18, system_id: 22, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 4, question: "How to catch all legendary Pokemon?", game_title: "Pokemon Sword and Shield", genre_id: 12, system_id: 7, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 6, question: "What are the best farming spots?", game_title: "World of Warcraft", genre_id: 11, system_id: 25, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 1, question: "How to unlock all endings?", game_title: "Nier: Automata", genre_id: 1, system_id: 22, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 2, question: "Where to find the best loot?", game_title: "Borderlands 3", genre_id: 18, system_id: 23, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 3, question: "Tips for surviving the first night?", game_title: "Minecraft", genre_id: 12, system_id: 25, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 7, question: "How to defeat Ganon?", game_title: "The Legend of Zelda: Ocarina of Time", genre_id: 2, system_id: 3, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 5, question: "Best build for solo play?", game_title: "Diablo III", genre_id: 4, system_id: 25, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 6, question: "How to unlock the secret boss?", game_title: "Kingdom Hearts", genre_id: 1, system_id: 13, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 2, question: "Where to find all treasure maps?", game_title: "Red Dead Redemption 2", genre_id: 14, system_id: 22, description: Faker::Lorem.paragraph(sentence_count: 4) },
#   {user_id: 3, question: "How to get the best gear?", game_title: "Destiny 2", genre_id: 9, system_id: 23, description: Faker::Lorem.paragraph(sentence_count: 4) }
# ]

# Faq.transaction do
#   questions.each do |data|
#     faq = Faq.new(data)
#     faq.save!(validate: false)
#   end
# end

# puts "FAQs seeded successfully!"



# # # ###Game REVIEW Seed: Again, likely will change later, but for MVP we are there.###
# # Clear existing data (optional)
# Review.destroy_all

# # Reviews data
# reviews = [
#   { user_id: 3, game_title: "Alien Isolation", subtitle: "Helpless horror done right", genre_id: 8, systems: "Series X, PS5", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 8 },
#   { user_id: 2, game_title: "Cyberpunk 2077", subtitle: "Maybe don't release an unfinished product.", genre_id: 12, systems: "Series X, PS5, Xbox One, PS4, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 6 },
#   { user_id: 1, game_title: "Mario vs Rabbids", subtitle: "Who thought this would be good?", genre_id: 20, systems: "Switch", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 9 },
#   { user_id: 4, game_title: "The Witcher 3", subtitle: "A fantasy RPG masterpiece", genre_id: 1, systems: "PS4, Xbox One, Switch, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 10 },
#   { user_id: 5, game_title: "Hades", subtitle: "Roguelike action done right", genre_id: 9, systems: "Switch, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 9 },
#   { user_id: 2, game_title: "Overwatch", subtitle: "Team-based shooter phenomenon", genre_id: 16, systems: "PS4, Xbox One, Switch, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 8 },
#   { user_id: 1, game_title: "Stardew Valley", subtitle: "Farming and life simulation bliss", genre_id: 10, systems: "Switch, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 10 },
#   { user_id: 3, game_title: "Final Fantasy XIV", subtitle: "MMORPG with an engaging story", genre_id: 11, systems: "PS4, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 8 },
#   { user_id: 6, game_title: "Halo Infinite", subtitle: "A fresh start for the franchise", genre_id: 18, systems: "Series X, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 7 },
#   { user_id: 7, game_title: "The Legend of Zelda: Ocarina of Time", subtitle: "An enduring classic", genre_id: 2, systems: "N64, 3DS", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 10 },
#   { user_id: 8, game_title: "Mass Effect 2", subtitle: "A space opera for the ages", genre_id: 1, systems: "PS3, Xbox 360, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 9 }
# ]

# Review.transaction do
#   reviews.each do |data|
#     review = Review.new(data)
#     review.save!(validate: false)
#   end
# end

# puts "Reviews seeded successfully!"



# #Favorite_Posts seed
# # Clear existing data (optional)
# FavoritePost.delete_all

# # Assuming User and Post models are already populated
# users = User.limit(8) # Adjusted to select 8 users
# posts = Post.limit(10)

# # Create FavoritePost records while ensuring no duplicates
# favorite_post_combinations = []

# while favorite_post_combinations.size < 20
#   user_id = users.sample.id
#   post_id = posts.sample.id

#   unless favorite_post_combinations.include?([user_id, post_id])
#     favorite_post_combinations << [user_id, post_id]
#   end
# end

# FavoritePost.transaction do
#   favorite_post_combinations.each do |user_id, post_id|
#     favorite_post = FavoritePost.new(user_id: user_id, post_id: post_id)
#     favorite_post.save!(validate: false)
#   end
# end

# puts "Favorite Posts seeded successfully!"

## Adding Images To Posts
# image_urls = [
#   "https://c8.alamy.com/comp/2DG102R/a-retro-gaming-graphic-design-illustration-in-a-1980s-or-1990s-style-with-colored-stripes-and-generic-gaming-controller-in-the-center-2DG102R.jpg",
#   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfSkFg5CnsbFK6IVOHRl_Kh4PAkNmaiVxHjbB9eTwf4mcB0uhsmFVkH8IcWHPRGZZC8Kc&usqp=CAU",
#   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD5rEUr6RmYIRDYFx1UMzZjKt79RjrOgVKdg&s",
#   "https://images.fineartamerica.com/images/artworkimages/mediumlarge/3/orange-game-controller-splatter-art-gaming-nadia-chevrel.jpg",
#   "https://as2.ftcdn.net/v2/jpg/05/64/64/75/1000_F_564647547_myFAUqXF7TPt1lswTMyk3joV7uIwLNGc.jpg",
#   "https://static1.thegamerimages.com/wordpress/wp-content/uploads/2023/04/38-exploded-nintendo-consoles-are-my-favorite-kind-of-video-game-art.jpg",
#   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWlywrX65Rd_WcSu95sFEXeMDtga0xd3thyA&s",
#   "https://as1.ftcdn.net/v2/jpg/05/61/16/24/500_F_561162444_KKFEqeOdl6RwOJOJOJPC9CH2gMU0Qh1I.jpg",
#   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFpnFXnso1vxmw1rQtIcwAuRHuqsMjBrbj9w&s"
# ]
# if image_urls.empty?
#   puts "No Images in array"
#   exit
# end
# Post.all.each do |post|
#   ran_img_one, ran_img_two = image_urls.sample(2)

#   post.image_url_one = ran_img_one
#   post.image_url_two = ran_img_two
#   post.save!

# end
# p "Post images for both image_one and image_two complete"


## PostComments seed (skirts validations for proper DB insertion)
# users = User.all
# posts = Post.all

# 25.times do
#   user = users.sample
#   post = posts.sample
#   comment_data = {user_id: user.id, 
#   post_id: post.id, 
#   body: Faker::Lorem.paragraph(sentence_count: 4)}
#   comment = PostComment.new(comment_data)
#   comment.save!(validate: false)
# end
# puts "25 comments created successfully!"










