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

file_user1 = URI.open('https://file1.closermag.fr/var/closermag/storage/images/media/images-des-contenus/galerie/2016-09-09-14-fois-ou-hugh-grant-nous-a-donne-envie-de-l-epouser-photos/hugh-grant12/5461072-1-fre-FR/Hugh-Grant.jpg?alias=original')
user1 = User.new(
  first_name: "Hugh",
  last_name: "GRANT",
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  email: "hugh.grant@sfr.fr",
  password: "letsgoat"
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
goat1.name = goat1.gender == "Male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
case goat1.speed
when 5..8
  goat1.price = ((0.3 * goat1.cuteness)  + (2)).round(2)
when 9..12
  goat1.price = ((0.3 * goat1.cuteness)  + (3)).round(2)
when 13..16
  goat1.price = ((0.3 * goat1.cuteness)  + (4)).round(2)
when 17..20
  goat1.price = ((0.3 * goat1.cuteness)  + (5)).round(2)
end
goat1.photo.attach(io: file_goat1, filename: "#{goat1.name}", content_type: 'image/png')
goat1.user = user1
goat1.save!
# ========================================================================================================================
file_user2 = URI.open('https://kitt.lewagon.com/placeholder/users/random')
user2 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  email: Faker::Internet.email,
  password: "letsgoat"
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
goat2.name = goat2.gender == "Male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
case goat2.speed
when 5..8
  goat2.price = ((0.3 * goat2.cuteness) + (2)).round(2)
when 9..12
  goat2.price = ((0.3 * goat2.cuteness) + (3)).round(2)
when 13..16
  goat2.price = ((0.3 * goat2.cuteness) + (4)).round(2)
when 17..20
  goat2.price = ((0.3 * goat2.cuteness) + (5)).round(2)
end
goat2.photo.attach(io: file_goat2, filename: "#{goat2.name}", content_type: 'image/png')
goat2.user = user2
goat2.save!
# ========================================================================================================================
file_user3 = URI.open('https://kitt.lewagon.com/placeholder/users/random')
user3 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  email: Faker::Internet.email,
  password: "letsgoat"
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
goat3.name = goat3.gender == "Male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
case goat3.speed
when 5..8
  goat3.price = ((0.3 * goat3.cuteness) + (2)).round(2)
when 9..12
  goat3.price = ((0.3 * goat3.cuteness) + (3)).round(2)
when 13..16
  goat3.price = ((0.3 * goat3.cuteness) + (4)).round(2)
when 17..20
  goat3.price = ((0.3 * goat3.cuteness) + (5)).round(2)
end
goat3.photo.attach(io: file_goat3, filename: "#{goat3.name}", content_type: 'image/png')
goat3.user = user3
goat3.save!
# ========================================================================================================================
file_user4 = URI.open('https://kitt.lewagon.com/placeholder/users/random')
user4 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  email: Faker::Internet.email,
  password: "letsgoat"
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
goat4.name = goat4.gender == "Male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
case goat4.speed
when 5..8
  goat4.price = ((0.3 * goat4.cuteness) + (2)).round(2)
when 9..12
  goat4.price = ((0.3 * goat4.cuteness) + (3)).round(2)
when 13..16
  goat4.price = ((0.3 * goat4.cuteness) + (4)).round(2)
when 17..20
  goat4.price = ((0.3 * goat4.cuteness) + (5)).round(2)
end
goat4.photo.attach(io: file_goat4, filename: "#{goat4.name}", content_type: 'image/png')
goat4.user = user4
goat4.save!
# ========================================================================================================================
file_user5 = URI.open('https://kitt.lewagon.com/placeholder/users/random')
user5 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  email: Faker::Internet.email,
  password: "letsgoat"
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
goat5.name = goat5.gender == "Male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
case goat5.speed
when 5..8
  goat5.price = ((0.3 * goat5.cuteness) + (2)).round(2)
when 9..12
  goat5.price = ((0.3 * goat5.cuteness) + (3)).round(2)
when 13..16
  goat5.price = ((0.3 * goat5.cuteness) + (4)).round(2)
when 17..20
  goat5.price = ((0.3 * goat5.cuteness) + (5)).round(2)
end
goat5.photo.attach(io: file_goat5, filename: "#{goat5.name}", content_type: 'image/png')
goat5.user = user5
goat5.save!
# ========================================================================================================================
file_goat6 = URI.open('https://upload.wikimedia.org/wikipedia/commons/6/64/Goat_by_Sans.jpg')
goat6 = Goat.new(
  gender: Faker::Gender.binary_type,
  color: Faker::Creature::Cat.breed,
  cuteness: rand(1..10),
  speed: rand(5..20),
  description: Faker::GreekPhilosophers.quote
)
goat6.name = goat6.gender == "Male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
case goat6.speed
when 6..8
  goat6.price = ((0.3 * goat6.cuteness) + (2)).round(2)
when 9..12
  goat6.price = ((0.3 * goat6.cuteness) + (3)).round(2)
when 13..16
  goat6.price = ((0.3 * goat6.cuteness) + (4)).round(2)
when 17..20
  goat6.price = ((0.3 * goat6.cuteness) + (5)).round(2)
end
goat6.photo.attach(io: file_goat6, filename: "#{goat6.name}", content_type: 'image/png')
goat6.user = user1
goat6.save!
# ========================================================================================================================
file_goat7 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Goat_close_up_03.svg/1200px-Goat_close_up_03.svg.png')
goat7 = Goat.new(
  gender: Faker::Gender.binary_type,
  color: Faker::Creature::Cat.breed,
  cuteness: rand(1..10),
  speed: rand(5..20),
  description: Faker::GreekPhilosophers.quote
)
goat7.name = goat7.gender == "Male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
case goat7.speed
when 5..8
  goat7.price = ((0.3 * goat7.cuteness) + (2)).round(2)
when 9..12
  goat7.price = ((0.3 * goat7.cuteness) + (3)).round(2)
when 13..16
  goat7.price = ((0.3 * goat7.cuteness) + (4)).round(2)
when 17..20
  goat7.price = ((0.3 * goat7.cuteness) + (5)).round(2)
end
goat7.photo.attach(io: file_goat7, filename: "#{goat7.name}", content_type: 'image/png')
goat7.user = user1
goat7.save!
# ========================================================================================================================
