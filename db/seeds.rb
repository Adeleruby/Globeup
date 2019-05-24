# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
puts "Destroying cities"
City.destroy_all
puts "Creating cities"
20.times do
  city = City.new(
    name: Faker::Address.city,
    description: Faker::Lorem.word,
    location: Faker::Lorem.word
  )
  city.save!
end
