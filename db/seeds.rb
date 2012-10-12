# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Product.destroy_all
# User.destroy_all
# Category.destroy_all
# ProductCategory.destroy_all

Rake::Task['db:reset'].invoke

yungchih = User.new(username: 'YungChih.Chen', 
			email: 'admin@aol.com', 
			password: 'foobar',
			password_confirmation: 'foobar'
			)
yungchih.admin = true
yungchih.save

james = User.create!(username: 'James.Anderson',
			email: 'james@aol.com',
			password: 'welcome',
			password_confirmation: 'welcome')

kevin = User.create!(username: 'Kevin.Chiu',
			email: 'kevin@aol.com',
			password: 'welcome',
			password_confirmation: 'welcome')

['Bikes', 'Shoes', 'Helmets', 'Tires', 'Accessories'].each do |cat|
	Category.create(name: cat)
end

products = []
#Bikes
products << Product.create(title: 'Zoomer', description: 'fast and affordable', price: "999.99", image_link: 'http://swipe.swipelife.netdna-cdn.com/wp-content/uploads/2009/08/trek-urban-bikes-main.jpg', category_ids: [Category.find_by_name('Bikes').id.to_s])
products << Product.create(title: 'Boomer', description: 'fast and reliable', price: "1500", image_link: 'http://swipe.swipelife.netdna-cdn.com/wp-content/uploads/2009/08/trek-urban-bikes-main.jpg', category_ids: [Category.find_by_name('Bikes').id.to_s])
products << Product.create(title: 'Racer', description: 'dead fast', price: "2000", image_link: 'http://www.beautifullife.info/wp-content/uploads/2010/09/04/04.jpg', category_ids: [Category.find_by_name('Bikes').id.to_s])
products << Product.create(title: 'Cruiser', description: 'enjoys the road', price: "1499.99", image_link: 'http://www.thecycler.net/photos/urban_outfitters_1-w600h361.jpg', category_ids: [Category.find_by_name('Bikes').id.to_s])
products << Product.create(title: 'Commuter', description: 'gets you to work', price: "1799.50", image_link: 'http://yatzer.com/assets/Article/2312/images/Bamboocycle-A-Sustainable-Urban-Bicycle-yatzer-6.jpg', category_ids: [Category.find_by_name('Bikes').id.to_s])
#Shoes
products << Product.create(title: 'Razor', description: 'so comfortable', price: "99.99", image_link: 'http://www.extremesupply.com/Merchant2/graphics/00000001/600x600/sidi/sidi_bicycle_shoes/sidi_hydro_gtx_shoes.jpg', category_ids: [Category.find_by_name('Shoes').id.to_s])
products << Product.create(title: 'Blader', description: 'perfect fit', price: "50", image_link: 'http://recklesscognition.files.wordpress.com/2009/01/51fe2hm5cml_sidi-blaze-womens-mountain-bike-shoes-steel_.jpg', category_ids: [Category.find_by_name('Shoes').id.to_s])
products << Product.create(title: 'Tesler', description: 'strong and durable', price: "150", image_link: 'http://www.bicyclebuys.com/productimages/DITRMTBM8PART.jpg', category_ids: [Category.find_by_name('Shoes').id.to_s])
products << Product.create(title: 'FlexSole', description: 'always smell like roses', price: "200", image_link: 'http://bikereviews.com/wp-content/uploads/2009/10/cannondale-aerospeed-comp-cycling-shoes.jpg', category_ids: [Category.find_by_name('Shoes').id.to_s])
products << Product.create(title: 'Carbonite', description: 'strong carbon fiber sole', price: "120", image_link: 'http://origin-cdn.volusion.com/sb4jw.nuvx9/v/vspfiles/photos/7735068250605-2T.jpg', category_ids: [Category.find_by_name('Shoes').id.to_s])
#Helmets
products << Product.create(title: 'Streaker', description: 'so comfortable', price: "100", image_link: 'http://moobike.com/wp-content/uploads/2011/02/Specialized-Racing-Bike-Helmet-Prevail-Black.jpg', category_ids: [Category.find_by_name('Helmets').id.to_s])
products << Product.create(title: 'Dark Knight', description: 'perfect fit', price: "200", image_link: 'http://www.productwiki.com/upload/images/fox_racing_flux_mountain_bike_helmet.jpg', category_ids: [Category.find_by_name('Helmets').id.to_s])
products << Product.create(title: 'XC90', description: 'strong and durable', price: "150", image_link: 'http://media.rei.com/media/tt/32cf3cca-0d8f-4a64-84a2-58664df39b58.jpg', category_ids: [Category.find_by_name('Helmets').id.to_s])
products << Product.create(title: 'Rover', description: 'protects your melon', price: "199.50", image_link: 'http://ecx.images-amazon.com/images/I/51y95sPCMaL.jpg', category_ids: [Category.find_by_name('Helmets').id.to_s])
products << Product.create(title: 'Thick Head', description: 'looks great', price: "75", image_link: 'http://media.tumblr.com/tumblr_lzshngrNdQ1r6d1joo1_500.jpg', category_ids: [Category.find_by_name('Helmets').id.to_s])
#Tires
products << Product.create(title: 'BollingerX', description: 'nails stand no chance', price: "100", image_link: 'http://www.rei.com/zoom/ww/a0f87a2a-aeef-4a60-91d9-d30200b811fc.jpg', category_ids: [Category.find_by_name('Tires').id.to_s])
products << Product.create(title: 'Trek5', description: 'perfect fit', price: "50", image_link: 'http://spiritualtravelman.files.wordpress.com/2007/09/bike-tire.jpg', category_ids: [Category.find_by_name('Tires').id.to_s, Category.find_by_name('Bikes').id.to_s])
products << Product.create(title: 'Cannondale5', description: 'strong and durable', price: "75", image_link: 'http://media.rei.com/media/211384.jpg', category_ids: [Category.find_by_name('Tires').id.to_s, Category.find_by_name('Bikes').id.to_s])
products << Product.create(title: 'AlphaBlue', description: 'smoothes your ride', price: "80", image_link: 'http://luxlow.com/wp-content/uploads/wpsc/product_images/ti27color1.jpg', category_ids: [Category.find_by_name('Tires').id.to_s, Category.find_by_name('Bikes').id.to_s])
products << Product.create(title: 'Warrior', description: 'looks great', price: "30", image_link: 'http://www.rei.com/zoom/ee/d4be100d-a394-4a1f-bfd2-964fb5b0b9f7.jpg', category_ids: [Category.find_by_name('Tires').id.to_s, Category.find_by_name('Bikes').id.to_s])
#Accessories
products << Product.create(title: 'Water Bottle', description: 'stay hydrated in style', price: "10", image_link: 'http://reviews.roadbikereview.com/files/2009/12/camelbak_podium.jpg', category_ids: [Category.find_by_name('Accessories').id.to_s])
products << Product.create(title: 'Heart Rate Pro', description: 'none slip and accurate', price: "100", image_link: 'http://runningwatchguide.com/wp-content/uploads/2011/11/Polar-RS300X-Heart-Rate-Monitor2.jpg', category_ids: [Category.find_by_name('Accessories').id.to_s])
products << Product.create(title: 'Sunglasses', description: 'blocks all UV light', price: "80", image_link: 'http://www.vpcam.com/members/1402226/uploaded/10882.jpg', category_ids: [Category.find_by_name('Accessories').id.to_s])
products << Product.create(title: 'Clipless Pedals', description: 'for racers', price: "75", image_link: 'http://www.cyclesportandfitness.com/images/WPD-95B.jpg', category_ids: [Category.find_by_name('Accessories').id.to_s, Category.find_by_name('Bikes').id.to_s ])
products << Product.create(title: 'Toe Clips', description: 'perfect for commuting', price: "30", image_link: 'http://www.bikegallery.com/blog/wp-content/uploads/2010/08/toeclip.jpg', category_ids: [Category.find_by_name('Accessories').id.to_s, Category.find_by_name('Bikes').id.to_s ])
