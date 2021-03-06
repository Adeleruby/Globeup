# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# CityGuide.destroy_all
# Events.destroy_all
# City.destroy_all

puts "Destroying Attendees"
Attendee.destroy_all
puts "Destroying UsersInterests"
UserInterest.destroy_all
puts "destroying interests"
Interest.destroy_all
puts "destroying events"
Event.destroy_all
puts "destroying users"
User.destroy_all
puts "destroying cities"
City.destroy_all
puts "creating cities"

paris = City.new(
  name: "Paris",
  country_name: "France",
  )
paris.remote_card_photo_url = "https://images.unsplash.com/photo-1493707553966-283afac8c358?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
paris.save!

dubai = City.new(
  name: "Dubai",
  country_name: "United Arab Emirates",
  )
dubai.remote_card_photo_url = "https://images.unsplash.com/photo-1465414951857-102134ffaa57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1953&q=80"
dubai.save!

singapore = City.new(
  name: "Singapore",
  country_name: "Republic of Singapore",
  )
singapore.remote_card_photo_url = "https://images.unsplash.com/photo-1525625293386-3f8f99389edd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1549&q=80"
singapore.save!

london = City.new(
  name: "London",
  country_name: "England",
  )
london.remote_card_photo_url = "https://images.unsplash.com/photo-1508710985089-e985fabbb184?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2800&q=80"
london.save!

new_york = City.new(
  name: "New York",
  country_name: "USA",
  )
new_york.remote_card_photo_url = "https://images.unsplash.com/photo-1522083165195-3424ed129620?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2320&q=80"
new_york.save!

hong_kong = City.new(
  name: "Hong Kong",
  country_name: "Hong Kong",
  )
hong_kong.remote_card_photo_url = "https://images.unsplash.com/photo-1507941097613-9f2157b69235?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2013&q=80"
hong_kong.save!

bali = City.new(
  name: "Bali",
  country_name: "Indonesia",
  )
bali.remote_card_photo_url = "https://images.unsplash.com/photo-1531060390976-9381603509be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80"
bali.save!

sydney = City.new(
  name: "Sydney",
  country_name: "Australia",
  )
sydney.remote_card_photo_url = "https://images.unsplash.com/photo-1506973035872-a4ec16b8e8d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80"
sydney.save!

madrid = City.new(
  name: "Madrid",
  country_name: "Spain",
  )
madrid.remote_card_photo_url = "https://images.unsplash.com/photo-1539037116277-4db20889f2d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
madrid.save!

cape_town = City.new(
  name: "Cape Town",
  country_name: "South Africa",
  )
cape_town.remote_card_photo_url = "https://images.unsplash.com/photo-1474874055390-459bc92357f3?ixlib=rb-1.2.1&auto=format&fit=crop&w=2046&q=80"
cape_town.save!


rio = City.new(
  name: "Rio",
  country_name: "Brazil",
  )
rio.remote_card_photo_url = "https://images.unsplash.com/photo-1483729558449-99ef09a8c325?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
rio.save!

sicily = City.new(
  name: "Sicily",
  country_name: "Italy",
  )
sicily.remote_card_photo_url = "https://images.unsplash.com/photo-1523365154888-8a758819b722?ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80"
sicily.save!

puts "Creating Users"

ella = User.create!(email: "ella@gmail.com", password: "123123", first_name: "Ella", last_name: "Wilson", current_location: paris, from: paris, moving_to: rio)
ella.remote_profile_pic_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559316069/Ella_libfjs.jpg"
ella.save!
ella.remote_cover_photo_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559315493/library_cjt9w7.jpg"
ella.save!

nicola = User.create!(email: "nicola@gmail.com", password: "123123", first_name: "nicola", last_name: "Wilson", current_location: paris, from: paris, moving_to: rio)
nicola.remote_profile_pic_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559316889/nicola_om2p8t.jpg"
nicola.save!
nicola.remote_cover_photo_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559315493/library_cjt9w7.jpg"
nicola.save!

alexa = User.create!(email: "alexa@gmail.com", password: "123123", first_name: "alexa", last_name: "Wilson", current_location: paris, from: paris, moving_to: rio)
alexa.remote_profile_pic_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559316748/alexa_zuaili.jpg"
alexa.save!
alexa.remote_cover_photo_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559315493/library_cjt9w7.jpg"
alexa.save!

maria = User.create!(email: "maria@gmail.com", password: "123123", first_name: "maria", last_name: "Wilson", current_location: paris, from: paris, moving_to: rio)
maria.remote_profile_pic_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559316683/maria_fmptgi.jpg"
maria.save!
maria.remote_cover_photo_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559315493/library_cjt9w7.jpg"
maria.save!

anna = User.create!(email: "anna@gmail.com", password: "123123", first_name: "Anna", last_name: "Wilson", current_location: paris, from: paris, moving_to: rio)
anna.remote_profile_pic_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559316624/anna_qhty1e.jpg"
anna.save!
anna.remote_cover_photo_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559315493/library_cjt9w7.jpg"
anna.save!

ruby = User.create!(email: "ruby@gmail.com", password: "123123", first_name: "Ruby", last_name: "Wilson", current_location: paris, from: paris, moving_to: rio)
ruby.remote_profile_pic_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559316576/ruby_bz8noa.jpg"
ruby.save!
ruby.remote_cover_photo_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559315493/library_cjt9w7.jpg"
ruby.save!

katrina = User.create!(email: "katrina@gmail.com", password: "123123", first_name: "Katrina", last_name: "Wilson", current_location: paris, from: paris, moving_to: rio)
katrina.remote_profile_pic_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559316513/katrina_fpl5ct.jpg"
katrina.save!
katrina.remote_cover_photo_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559315493/library_cjt9w7.jpg"
katrina.save!

erica = User.create!(email: "erica@gmail.com", password: "123123", first_name: "Erica", last_name: "Wilson", current_location: paris, from: paris, moving_to: rio)
erica.remote_profile_pic_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559316434/erica_y49kjv.jpg"
erica.save!
erica.remote_cover_photo_url = "https://res.cloudinary.com/dtil1nkcr/image/upload/v1559315493/library_cjt9w7.jpg"
erica.save!

puts "Creating Interests"
interests = ["Tech Girls","Foodies","Book Club","Adventurers","Travels","Cinema","Music","Sporty"]
interests.each do |category|
  interest = Interest.new( category: category, user: ella )
  interest.save!
end

puts "creating events"
tech_lunch = Event.new(
  name: "Tech Lunch",
  location: "Le Wagon London",
  category: "Tech",
  description: "Lunch with women in Tech",
  owner: ella,
  city: rio,
  starts: DateTime.strptime("09/01/2019 17:00", "%m/%d/%Y %H:%M"),
  ends: DateTime.strptime("09/01/2019 20:00", "%m/%d/%Y %H:%M")
  )
  tech_lunch.remote_photo_url = "https://cdn.evoke.ie/wp-content/uploads/2018/08/23180904/coffee-feat-696x503.jpg"
  tech_lunch.save!
newbies = Event.new(
  name: "Newbies in Paris",
  location: "Louvre Paris",
  category: "Networking",
  description: "Drinks with the latest girls in town - welcome!",
  owner: nicola,
  city: paris,
  starts: DateTime.strptime("09/07/2019 17:00", "%m/%d/%Y %H:%M"),
  ends: DateTime.strptime("09/07/2019 20:00", "%m/%d/%Y %H:%M")
  )
  newbies.remote_photo_url = "http://www.whcm.org/wp-content/uploads/whcm-networking-casual.jpg"
  newbies.save!
bloggers = Event.new(
  name: "Fashion Blogger Connect",
  location: "Le Marais Paris",
  category: "Fashion",
  description: "Join other Fashion Bloggers in Paris",
  owner: maria,
  city: paris,
  starts: DateTime.strptime("09/08/2019 18:00", "%m/%d/%Y %H:%M"),
  ends: DateTime.strptime("09/08/2019 22:00", "%m/%d/%Y %H:%M")
  )
  bloggers.remote_photo_url = "https://3.bp.blogspot.com/-bfok0VO60BQ/Wq69mPmy6KI/AAAAAAAAK4E/SA6ZGptagnQlaRXxYR0swVfGkevecHXwQCLcBGAs/s1600/paris-fw18-street-style-day2-tyler-joe-105-1520018002.jpg"
  bloggers.save!
 yoga = Event.new(
  name: "Yogis in Paris",
  location: "Jardin des Tuileries",
  category: "Yoga",
  description: "Vinyasa flow with us at the Tuileries",
  owner: ella,
  city: paris,
  starts: DateTime.strptime("10/10/2019 17:00", "%m/%d/%Y %H:%M"),
  ends: DateTime.strptime("10/10/2019 19:00", "%m/%d/%Y %H:%M")
  )
  yoga.remote_photo_url = "https://www.discoverwalks.com/blog/wp-content/uploads/2018/12/yoga1.jpg"
  yoga.save!


# class Event < ApplicationRecord
#   belongs_to :city
#   belongs_to :user
#   has_many :attendee
#   validates :name, presence: true
#   validates :location, presence: true
#   validates :category, presence: true
#   validates :description, presence: true
#   mount_uploader :photo, PhotoUploader
# end















