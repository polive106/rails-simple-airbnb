# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Flat.destroy_all

10.times do
  attributes = {
    address: Faker::Address.full_address,
    name: Faker::Lorem.sentence(word_count: 5),
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_night: rand(10..800),
    number_of_guests: rand(2..10)
  }
  flat = Flat.create!(attributes)
  puts "Created flat: #{flat.name}"
end
