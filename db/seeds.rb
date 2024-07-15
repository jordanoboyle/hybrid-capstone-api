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
systems = {
  "Nintendo Entertainment System" => "Nintendo", "Super Nintendo Entertainment System" => "Nintendo",
  "Nintendo 64" => "Nintendo", "GameCube" => "Nintendo",
  "Wii" => "Nintendo", "Wii U" => "Nintendo",
  "Nintendo Switch" => "Nintendo", "Game Boy" => "Nintendo",
  "Game Boy Color" => "Nintendo", "Game Boy Advance" => "Nintendo",
  "Nintendo DS" => "Nintendo", "Nintendo 3DS" => "Nintendo",
  "PlayStation" => "Sony", "PlayStation 2" => "Sony",
  "PlayStation 3" => "Sony", "PlayStation 4" => "Sony",
  "PlayStation 5" => "Sony", "PlayStation Portable" => "Sony",
  "PlayStation Vita" => "Sony", "Xbox" => "Microsoft",
  "Xbox 360" => "Microsoft", "Xbox One" => "Microsoft",
  "Xbox Series X" => "Microsoft", "Xbox Series S" => "Microsoft",
  "PC" => "Various", "Sega Master System" => "Sega",
  "Sega Genesis" => "Sega", "Sega Saturn" => "Sega",
  "Sega Dreamcast" => "Sega", "Atari 2600" => "Atari",
  "Atari 5200" => "Atari", "Atari 7800" => "Atari",
  "Atari Jaguar" => "Atari", "ColecoVision" => "Coleco",
  "Intellivision" => "Mattel", "Neo Geo" => "SNK",
  "Neo Geo Pocket" => "SNK", "TurboGrafx-16" => "NEC",
  "Philips CD-i" => "Philips", "Magnavox Odyssey" => "Magnavox",
  "Commodore 64" => "Commodore", "Amiga" => "Commodore",
  "3DO" => "Panasonic", "Vectrex" => "MB",
  "WonderSwan" => "Bandai", "WonderSwan Color" => "Bandai",
  "N-Gage" => "Nokia", "Ouya" => "Ouya",
  "Stadia" => "Google"
}

systems.each do |system, comp|
  System.create(name: system, company: comp)
end

# ###USERS SEED DATA FOR TESTING###
User.create(first_name: "Luke", last_name: "Skywalker", email: "luke@email.com", username: "luke2011", password: "password", password_confirmation: "password", admin: true, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!")
User.create(first_name: "Cloud", last_name: "Strife", email: "cloud@email.com", username: "cloud2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!")
User.create(first_name: "Tink", last_name: "OBoyle", email: "tink@email.com", username: "tink2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!")
User.create(first_name: "John", last_name: "Sheppard", email: "john@email.com", username: "john2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!")
User.create(first_name: "Bob", last_name: "Belcher", email: "bob@email.com", username: "bob2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!")

# ##Genres Seeds (THIS IS REAL DATA THAT NEEDS TO BE THERE, STAYS COMMENTED OUT UNLESS FIRST TIME)## 
cats = ["RPG-Role Playing Game", "Adventure", "Sports", "Puzzle", "Stealth", "Platformer", "Strategy", "Metroidvania", "Action", "Simulation", "MMO-RPG, Massively Multiplayer Online", "Survival", "Real Time Strategy", "Battle Royale", "Fighting", "Shooter", "Survival Horror", "First Person Shooter", "Massively Multiplayer Online", "Tactical RPG"]

descript = [
    "Embark on epic quests, leveling up your character and fighting monsters in immersive worlds.",
    "Explore mysterious lands, solve puzzles, and unravel thrilling narratives.",
    "Compete in realistic or fantastical sports events and lead your team to victory.",
    "Challenge your brain with intricate puzzles and logic-based gameplay.",
    "Sneak past enemies, use stealth tactics, and complete covert missions.",
    "Jump across platforms, defeat enemies, and collect power-ups in vibrant worlds.",
    "Plan your moves carefully and outsmart your opponents in strategic battles.",
    "Explore interconnected worlds, unlock abilities, and defeat challenging bosses.",
    "Engage in intense combat and action-packed gameplay, defeating hordes of enemies.",
    "Simulate real-world activities or create your own virtual experiences.",
    "Join massive online worlds, complete quests, and interact with thousands of players.",
    "Gather resources, build shelters, and survive in harsh environments.",
    "Manage resources and armies, making real-time strategic decisions.",
    "Fight to be the last one standing in high-stakes matches.",
    "Engage in close combat and unleash powerful moves against opponents.",
    "Experience thrilling shootouts and intense firefights.",
    "Survive terrifying environments filled with monsters and limited resources.",
    "Engage in fast-paced shooting from a first-person perspective.",
    "Join huge multiplayer worlds and complete quests with friends.",
    "Lead your team in tactical, turn-based battles with RPG elements."
]
i = 0
while i < cats.length
  genre             = Genre.new()
  genre.name        = cats[i]
  genre.description = descript[i]
  genre.save
  i += 1
end


# ### POST SEEDS, MAY CHANGE IN THE FUTURE TO INCLUDE IMAGES?##
specific_game_titles = [
  "Breaking The 3D Barrier for Platformers: How SM64 Changed the World!",
  "Exploring Hyrule: The Open-World Mastery of Breath of the Wild",
  "Unraveling the Mysteries of Rapture: The Legacy of BioShock",
  "Surviving the Apocalypse: The Emotional Impact of The Last of Us",
  "Reviving the Classics: How Final Fantasy VII Remake Modernized a Legend"
]
general_topic_titles = [
  "The Evolution of Open-World Games: From GTA to Breath of the Wild",
  "Why Indie Games Are Taking Over: A Deep Dive into Stardew Valley",
  "Top Ten Hidden Gems on the Nintendo Switch You Must Play",
  "Exploring Virtual Reality: The Future of Immersive Gaming Experiences",
  "The Rise of Esports: How Competitive Gaming Became a Global Phenomenon"
]

Post.create(user_id: 1, title: specific_game_titles[0], game_title: "Super Mario 64", genre_id: 6, system_id: 3, body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 6))
Post.create(user_id: 5, title: specific_game_titles[1], game_title: "Breath of the Wild", genre_id: 2, system_id: 7, body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 6))
Post.create(user_id: 4, title: specific_game_titles[2], game_title: "BioShock", genre_id: 18, system_id: 21, body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 6))
Post.create(user_id: 4, title: specific_game_titles[3], game_title: "Last of Us", genre_id: 12, system_id: 16, body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 6))
Post.create(user_id: 3, title: specific_game_titles[4], game_title: "Final Fantasy 7: Remake", genre_id: 1, system_id: 17, body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 6))
Post.create(user_id: 3, title: general_topic_titles[0], game_title: nil, genre_id: nil, system_id: nil, body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 6))
Post.create(user_id: 2, title: general_topic_titles[1], game_title: nil, genre_id: nil, system_id: nil, body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 6))
Post.create(user_id: 1, title: general_topic_titles[2], game_title: nil, genre_id: nil, system_id: nil, body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 6))
Post.create(user_id: 2, title: general_topic_titles[3], game_title: nil, genre_id: nil, system_id: nil, body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 6))
Post.create(user_id: 5, title: general_topic_titles[4], game_title: nil, genre_id: nil, system_id: nil, body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 6))


# # ###FAQ SEED--> I PLAN ON ADJUSTING THIS EVENTUALLY BUT FOR MVP PURPOSES THIS IS FINE###
questions = [
  {user_id: 3, question: "Is there a shortcut in Pillar of Autumn?", game_title: "Halo: Combat Evolved", genre_id: 18, system_id: 20, description: Faker::Lorem.sentences(number: 4, supplemental: true)},
  {user_id: 2, question: "What chests to avoid to get Zodiac Spear?", game_title: "Final Fantasy 12", genre_id: 1, system_id: 22, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 1, question: "Help! I cannot beat Dracula?!", game_title: "Castlevania", genre_id: 8, system_id: 4, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 4, question: "Where to find the Master Sword?", game_title: "The Legend of Zelda: Breath of the Wild", genre_id: 2, system_id: 7, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 5, question: "How to unlock all characters?", game_title: "Super Smash Bros. Ultimate", genre_id: 15, system_id: 7, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 2, question: "Tips for defeating Sephiroth?", game_title: "Final Fantasy VII", genre_id: 1, system_id: 13, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 1, question: "How to find all Chaos Emeralds?", game_title: "Sonic the Hedgehog", genre_id: 9, system_id: 27, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 3, question: "Best strategy for taking down a Juggernaut?", game_title: "Call of Duty: Modern Warfare", genre_id: 18, system_id: 22, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 4, question: "How to catch all legendary Pokemon?", game_title: "Pokemon Sword and Shield", genre_id: 12, system_id: 7, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 5, question: "What are the best farming spots?", game_title: "World of Warcraft", genre_id: 11, system_id: 25, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 1, question: "How to unlock all endings?", game_title: "Nier: Automata", genre_id: 1, system_id: 22, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 2, question: "Where to find the best loot?", game_title: "Borderlands 3", genre_id: 18, system_id: 23, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 3, question: "Tips for surviving the first night?", game_title: "Minecraft", genre_id: 12, system_id: 25, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 4, question: "How to defeat Ganon?", game_title: "The Legend of Zelda: Ocarina of Time", genre_id: 2, system_id: 3, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 5, question: "Best build for solo play?", game_title: "Diablo III", genre_id: 4, system_id: 25, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 1, question: "How to unlock the secret boss?", game_title: "Kingdom Hearts", genre_id: 1, system_id: 13, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 2, question: "Where to find all treasure maps?", game_title: "Red Dead Redemption 2", genre_id: 14, system_id: 22, description: Faker::Lorem.sentences(number: 4, supplemental: true) },
  {user_id: 3, question: "How to get the best gear?", game_title: "Destiny 2", genre_id: 9, system_id: 23, description: Faker::Lorem.sentences(number: 4, supplemental: true) }
]

questions.each do |data|
  Faq.create(user_id: data[:user_id], question: data[:question], game_title: data[:game_title], genre_id: data[:genre_id], system_id: data[:system_id], description: data[:description])
end


# ###Game REVIEW Seed: Again, likely will change later, but for MVP we are there.###
reviews = [
  { user_id: 3, game_title: "Alien Isolation", subtitle: "Helpless horror done right", genre_id: 8, systems: "Series X, PS5", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 8 },
  { user_id: 2, game_title: "Cyberpunk 2077", subtitle: "Maybe don't release an unfinished product.", genre_id: 12, systems: "Series X, PS5, Xbox One, PS4, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 6 },
  { user_id: 1, game_title: "Mario vs Rabbids", subtitle: "Who thought this would be good?", genre_id: 20, systems: "Switch", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 9 },
  { user_id: 4, game_title: "The Witcher 3", subtitle: "A fantasy RPG masterpiece", genre_id: 1, systems: "PS4, Xbox One, Switch, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 10 },
  { user_id: 5, game_title: "Hades", subtitle: "Roguelike action done right", genre_id: 9, systems: "Switch, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 9 },
  { user_id: 2, game_title: "Overwatch", subtitle: "Team-based shooter phenomenon", genre_id: 16, systems: "PS4, Xbox One, Switch, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 8 },
  { user_id: 1, game_title: "Stardew Valley", subtitle: "Farming and life simulation bliss", genre_id: 10, systems: "Switch, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 10 },
  { user_id: 3, game_title: "Final Fantasy XIV", subtitle: "MMORPG with an engaging story", genre_id: 11, systems: "PS4, PC", body: Faker::Lorem.paragraph(sentence_count: 20, supplemental: true, random_sentences_to_add: 9), rating: 8 }
]
reviews.each do |data|
  Review.create(user_id: data[:user_id], game_title: data[:game_title], subtitle: data[:subtitle], genre_id: data[:genre_id], systems: data[:systems], body: data[:body])
end
