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
User.create(first_name: "John", last_name: "Sheppard", email: "john@email.com", username: "john2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!")
User.create(first_name: "Bob", last_name: "Belcher", email: "bob@email.com", username: "bob2011", password: "password", password_confirmation: "password", admin: false, prof_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyimGSp2axjfAaKtnXTutok7ylEgwGdQvXDw&s", about_me: "Flavor text about yourself can be put here. Share with the world what makes you you!")

#Genres Seeds
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

video_game_systems_and_companies = {
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

video_game_systems_and_companies.each do |system, comp|
  System.create(name: system, company: comp)
end