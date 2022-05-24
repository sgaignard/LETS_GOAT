# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


# require 'open-uri'

# url = "https://tmdb.lewagon.com/movie/top_rated"
# films_db = URI.open(url).read
# films = JSON.parse(films_db)
# films["results"].each { |element|
#   Movie.create(title: element["title"], overview: element["overview"], poster_url: "https://tmdb.lewagon.com/movie/top_rated#{element["poster_path"]}", rating: element["vote_average"])
# }
require "faker"

Goat.destroy_all
User.destroy_all

10.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
  user.save!
  3.times do
    goat = Goat.new(
      gender: Faker::Gender.binary_type,
      color: Faker::Creature::Cat.breed,
      cuteness: rand(1..10),
      speed: rand(5..20),
    )
    goat.name = goat.gender == "male" ? (Faker::Name.male_first_name) : (Faker::Name.female_first_name)
    goat.price = 0.3 * goat.cuteness + (1 / goat.speed) * 3
    goat.user = user
    goat.save!
  end
end
