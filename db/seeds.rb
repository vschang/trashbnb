# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Receptacle.destroy_all
Booking.destroy_all
User.destroy_all

p "cleaning the DB"

trash_king = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Beer.brand)
the_garbage_man = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Beer.brand)
dumpster_fire = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Beer.brand)
basura_boy = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Beer.brand)
muffin_man = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Beer.brand)

receptacle = Receptacle.new(
  name: 'Pre-Galvanized Trash Can',
  capacity: 80,
  price_per_day: 2000,
  address: Faker::Address.full_address,
  description: 'Your classic pre-galvanized trash can perfect for any ocassion. Includes lid.',
  user: trash_king
)
file = URI.open('https://i5.walmartimages.com/asr/3c0b41de-a088-4dca-84a5-7153fd77347e_1.ba1bbe6206e16eb514ab5f860da9af3d.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'Dumpster on Fire',
  capacity: 800,
  price_per_day: 50_000,
  address: Faker::Address.full_address,
  description: 'Sometimes a dumpster fire is exactly what you need to get rid of your trash. Use with caution!',
  user: the_garbage_man
)
file = URI.open('https://anentrepreneurswords.files.wordpress.com/2015/10/dumpsterfire.jpg')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'A landfill',
  capacity: 100000,
  price_per_day: 10000,
  address: Faker::Address.full_address,
  description: 'While not the most environmentally friendly, a landfill is the perfect place to get rid of tons and tons of trash. Includes truck service.',
  user: dumpster_fire
)
file = URI.open('https://static.sciencelearn.org.nz/images/images/000/004/365/embed/ART_Landfills_BulldozerAtLandfill.jpeg?1597290151')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'The Great Pacific Garbage Patch',
  capacity: 5_725_900,
  price_per_day: 9_999_999_999,
  address: Faker::Address.full_address,
  description: 'An island of trash in the North Pacific Ocean created by areas of spinning marine debris. A perfect island getaway for your trash.',
  user: basura_boy
)
file = URI.open('https://i.pinimg.com/originals/89/73/b6/8973b6535e8849d9b3a095e9c728b116.jpg')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'The Satellite Graveyard',
  capacity: 1_000_000_000,
  price_per_day: 1_234_567_891,
  address: Faker::Address.full_address,
  description: 'If you can afford the luxury, why not fly your trash to space? Have your trash join disused satellites while orbiting the earth',
  user: the_garbage_man
)
file = URI.open('https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2008/03/debris_objects_-_mostly_debris_-_in_low_earth_orbit_leo_-_view_over_the_equator/9836792-3-eng-GB/Debris_objects_-_mostly_debris_-_in_low_Earth_orbit_LEO_-_view_over_the_equator.jpg')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'Black Hole',
  capacity: 100_000_000_000,
  price_per_day: 9_999_999,
  address: Faker::Address.full_address,
  description: 'Have an infinite amount of trash? The Black Hole will take care of it. Spaceship shuttle service included.',
  user: muffin_man
)
file = URI.open('https://imageio.forbes.com/blogs-images/startswithabang/files/2017/04/maxresdefault-1200x675.jpg?format=jpg&width=1200&fit=bounds')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

p "Finished Seeding!"
