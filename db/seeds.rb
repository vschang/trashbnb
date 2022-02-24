# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.destroy_all
Receptacle.destroy_all
Booking.destroy_all

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
  address: 'Calle Dr. Esquerdo, 70, 28007 Madrid',
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
  address: 'Calle de Narváez, 49, 28009 Madrid',
  description: 'Sometimes a dumpster fire is exactly what you need to get rid of your trash. Use with caution!',
  user: the_garbage_man
)
file = URI.open('https://anentrepreneurswords.files.wordpress.com/2015/10/dumpsterfire.jpg')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'A landfill',
  capacity: 100_000,
  price_per_day: 10_000,
  address: 'Calle de Bailén, 28071 Madrid',
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
  address: 'Plaza del Emperador Carlos V, 28045 Madrid',
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
  address: 'Plaza Mayor, 28012 Madrid',
  description: 'If you can afford the luxury, why not fly your trash to space? Have your trash join disused satellites while orbiting the earth',
  user: the_garbage_man
)
file = URI.open('https://wp-assets.futurism.com/2018/02/spaceman.jpg')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'Black Hole',
  capacity: 100_000_000_000,
  price_per_day: 9_999_999,
  address: 'Calle de Atocha, 125, 28012 Madrid',
  description: 'Have an infinite amount of trash? The Black Hole will take care of it. Spaceship shuttle service included.',
  user: muffin_man
)
file = URI.open('https://imageio.forbes.com/blogs-images/startswithabang/files/2017/04/maxresdefault-1200x675.jpg?format=jpg&width=1200&fit=bounds')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'Golden Trashcan',
  capacity: 20,
  price_per_day: 100,
  address: 'C. de la Isla de Java, 2, 28034 Madrid',
  description: 'Have your trash feel like royalty. Enjoy our premium 24k gold trash can. Fit for a king!',
  user: muffin_man
)
file = URI.open('https://ae01.alicdn.com/kf/H356a139e791e43d4b5759e6497ba9944m/Stainless-Steel-Trash-Can-Shake-Cover-Home-Bathroom-Kitchen-Living-Room-Flip-Light-Luxury-with-Cover.jpg_Q90.jpg_.webp')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'Wicker Trashcan',
  capacity: 20,
  price_per_day: 10,
  address: 'C. Agustín de Iturbide, 1, 28043 Madrid',
  description: 'Feeling tropical? Try our wicker trashcan. It\'s properties include UV and water resistance. Your trash will enjoy soaking up the sun in paradise.',
  user: muffin_man
)
file = URI.open('https://im-7.eefa.co/clf-co7306-wb-rs-e1-s7.jpg')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'A Deep Pit',
  capacity: 4_000,
  price_per_day: 5,
  address: 'C. de Apolonio Morales, 3, 28036 Madrid',
  description: 'Want to forget about your trash forever? Throw it into a deep dark pit. Feel the relief of releasing a burden worth 4,000L of trash.',
  user: muffin_man
)
file = URI.open('https://lbc.ac.uk/wp-content/uploads/2019/12/Dvar1-1.jpg')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'The Suburban Dream',
  capacity: 35,
  price_per_day: 15,
  address: 'Av. de Filipinas, 28003 Madrid',
  description: 'Want your trash to live the American Dream? Try the Suburban dream. Your trash will enjoy the luxury of living the classic American life in the suburbs. The experience includes soccer moms, massive SUV cars, and green lawns. Best for Fourth of July celebrations.',
  user: muffin_man
)
file = URI.open('https://ejharrison.com/wp-content/uploads/2021/11/Thanksgiving_holiday_banner_ej_harrison_blog_post_header.webp')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'Baby Blue',
  capacity: 87,
  price_per_day: 35,
  address: 'C. de Ferraz, 38, 28008 Madrid',
  description: 'A standard trash can in a beautiful baby blue color. Pretty standard but the color is cute.',
  user: muffin_man
)
file = URI.open('https://img-new.cgtrader.com/items/927741/3577521ad0/large/light-blue-trash-bin-with-two-wheels-3d-model-max-obj-3ds-c4d-lwo-lw-lws-ma-mb.jpg')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'Beautiful Japanese Trash Can',
  capacity: 20,
  price_per_day: 168,
  address: 'C. Sepúlveda, 3, 28011 Madrid',
  description: 'This beautiful Japanese trash can frequently sells out from domestic vendors, so at the moment it has to be ordered from abroad. The bin is constructed of forms distilled down to the essences of function: a simple cylindrical polymer vessel and a swinging wood-veneer top. It\'s 17-inches tall, which makes it useful in the bathroom and beyond.',
  user: muffin_man
)
file = URI.open('https://pyxis.nymag.com/v1/imgs/6c9/3fd/ea37665e17eb362fb0ca4a76d181e63a06.2x.rsquare.w600.jpg')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'Burning Metal Trashcan',
  capacity: 100,
  price_per_day: 20,
  address: 'Gta. de las Pirámides, 1, 28005 Madrid',
  description: 'Need to get rid of sensitive documents? Want to ensure your trash (secrets) is wiped forever from the face of the earth? Want to stay warm in the winter? Choose our Burning Metal Trashcan, perfect for any of your heating or trash management needs. Similar to Dumpster on Fire but with a smaller capacity.',
  user: muffin_man
)
file = URI.open('https://yardblogger.com/wp-content/uploads/2021/02/neighbors-burning-trash.jpg')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

receptacle = Receptacle.new(
  name: 'The Beach',
  capacity: 100_000,
  price_per_day: 200,
  address: 'Calle Fuenterrabía, 2, 28014 Madrid',
  description: 'Don\'t give a damn about the turtles? Love to use plastic straws? Hate the fact that paper straws disentegrate in a matter of seconds? Throw your trash on the beach. Don\'t worry. There are always people volunteering to clean it up.',
  user: muffin_man
)
file = URI.open('https://hakaimagazine.com/wp-content/uploads/aacs_banner.jpg')
receptacle.picture.attach(io: file, filename: "#{receptacle.name}.png", content_type: 'image/png')
receptacle.save

p "Finished Seeding!"
