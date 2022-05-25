# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

# url = "https://tmdb.lewagon.com/movie/top_rated"
# films_db = URI.open(url).read
# films = JSON.parse(films_db)
# films["results"].each { |element|
#   Movie.create(title: element["title"], overview: element["overview"], poster_url: "https://tmdb.lewagon.com/movie/top_rated#{element["poster_path"]}", rating: element["vote_average"])
# }
require "open-uri"
require "faker"

Goat.destroy_all
User.destroy_all

file_user1 = URI.open('https://kitt.lewagon.com/placeholder/users/random')
user1 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
  user1.photo.attach(io: file_user1, filename: "#{user1.first_name}_#{user1.last_name}", content_type: 'image/png')
  user1.save!
file_goat1 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Hausziege_04.jpg/330px-Hausziege_04.jpg')
goat1 = Goat.new(
  gender: Faker::Gender.binary_type,
  color: Faker::Creature::Cat.breed,
  cuteness: rand(1..10),
  speed: rand(5..20),
  description: Faker::GreekPhilosophers.quote
)
  goat1.name = goat1.gender == "male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
  goat1.price = (0.3 * goat1.cuteness + (1 / goat1.speed) * 3).round(2)
  goat1.photo.attach(io: file_goat1, filename: "#{goat1.name}", content_type: 'image/png')
  goat1.user = user1
  goat1.save!



file_user2 = URI.open('https://kitt.lewagon.com/placeholder/users/random')
user2 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
  user2.photo.attach(io: file_user2, filename: "#{user2.first_name}_#{user2.last_name}", content_type: 'image/png')
  user2.save!
file_goat2 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/A_white_irish_goat.jpg/220px-A_white_irish_goat.jpg')
goat2 = Goat.new(
  gender: Faker::Gender.binary_type,
  color: Faker::Creature::Cat.breed,
  cuteness: rand(1..10),
  speed: rand(5..20),
  description: Faker::GreekPhilosophers.quote
)
  goat2.name = goat2.gender == "male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
  goat2.price = (0.3 * goat2.cuteness + (1 / goat2.speed) * 3).round(2)
  goat2.photo.attach(io: file_goat2, filename: "#{goat2.name}", content_type: 'image/png')
  goat2.user = user2
  goat2.save!



file_user3 = URI.open('https://kitt.lewagon.com/placeholder/users/random')
user3 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
  user3.photo.attach(io: file_user3, filename: "#{user3.first_name}_#{user3.last_name}", content_type: 'image/png')
  user3.save!
file_goat3 = URI.open('https://upload.wikimedia.org/wikipedia/commons/f/ff/Domestic_goat_kid_in_capeweed.jpg')
goat3 = Goat.new(
  gender: Faker::Gender.binary_type,
  color: Faker::Creature::Cat.breed,
  cuteness: rand(1..10),
  speed: rand(5..20),
  description: Faker::GreekPhilosophers.quote
)
  goat3.name = goat3.gender == "male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
  goat3.price = (0.3 * goat3.cuteness + (1 / goat3.speed) * 3).round(2)
  goat3.photo.attach(io: file_goat3, filename: "#{goat3.name}", content_type: 'image/png')
  goat3.user = user3
  goat3.save!



file_user4 = URI.open('https://kitt.lewagon.com/placeholder/users/random')
user4 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
  user4.photo.attach(io: file_user4, filename: "#{user4.first_name}_#{user4.last_name}", content_type: 'image/png')
  user4.save!
file_goat4 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Domestic_goat_feeding_on_capeweed.jpg/220px-Domestic_goat_feeding_on_capeweed.jpg')
goat4 = Goat.new(
  gender: Faker::Gender.binary_type,
  color: Faker::Creature::Cat.breed,
  cuteness: rand(1..10),
  speed: rand(5..20),
  description: Faker::GreekPhilosophers.quote
)
  goat4.name = goat4.gender == "male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
  goat4.price = (0.3 * goat4.cuteness + (1 / goat4.speed) * 3).round(2)
  goat4.photo.attach(io: file_goat4, filename: "#{goat4.name}", content_type: 'image/png')
  goat4.user = user4
  goat4.save!


file_user5 = URI.open('https://kitt.lewagon.com/placeholder/users/random')
user5 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
  user5.photo.attach(io: file_user5, filename: "#{user5.first_name}_#{user5.last_name}", content_type: 'image/png')
  user5.save!
file_goat5 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Mountain_Goat%2C_Enchantments_Basin.jpg/600px-Mountain_Goat%2C_Enchantments_Basin.jpg')
goat5 = Goat.new(
  gender: Faker::Gender.binary_type,
  color: Faker::Creature::Cat.breed,
  cuteness: rand(1..10),
  speed: rand(5..20),
  description: Faker::GreekPhilosophers.quote
)
  goat5.name = goat5.gender == "male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
  goat5.price = (0.3 * goat5.cuteness + (1 / goat5.speed) * 3).round(2)
  goat5.photo.attach(io: file_goat5, filename: "#{goat5.name}", content_type: 'image/png')
  goat5.user = user5
  goat5.save!




file_user6 = URI.open('https://kitt.lewagon.com/placeholder/users/random')
user6 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
  user6.photo.attach(io: file_user6, filename: "#{user6.first_name}_#{user6.last_name}", content_type: 'image/png')
  user6.save!
file_goat6 = URI.open('https://upload.wikimedia.org/wikipedia/commons/6/64/Goat_by_Sans.jpg')
goat6 = Goat.new(
  gender: Faker::Gender.binary_type,
  color: Faker::Creature::Cat.breed,
  cuteness: rand(1..10),
  speed: rand(5..20),
  description: Faker::GreekPhilosophers.quote
)
  goat6.name = goat6.gender == "male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
  goat6.price = (0.3 * goat6.cuteness + (1 / goat6.speed) * 3).round(2)
  goat6.photo.attach(io: file_goat6, filename: "#{goat6.name}", content_type: 'image/png')
  goat6.user = user6
  goat6.save!
