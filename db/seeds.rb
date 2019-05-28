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
    country_name: Faker::Address.country
  )
  city.remote_card_photo_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1558715593/pexels-photo-262413_yuwyls.jpg"
  city.save!
end

puts "Destroying Interests"
Interest.destroy_all
puts "Choose your Interests"
interest = ["Tech Girls","Foodies","Book Club","Adventurers","Travels","Cinema","Music","Sporty"]
interest.each do |category|
  interest = Interest.new( category: category )
  interest.save!

end
