Bed.destroy_all

puts "Deleting beds"
file = URI.open('https://i2-prod.mirror.co.uk/incoming/article11307844.ece/ALTERNATES/s615b/EBAY-PRISON-BED.jpg')
bed = Bed.new(
  title: "Renting my prison bed",
  category: "single",
  location: "Calle del Conde de Cartagena, 15, 28007 Madrid",
  price: 100,
  description: "The most comfortable prision bed in Madrid with white pillows.",
  user: User.find(1)
)
bed.photo.attach(io: file, filename: 'bed.png', content_type: 'image/png')
bed.save!

file = URI.open('https://www.cpacanada.ca/-/media/cpa-digital-hub/featured-images/2019/01/hub-01-16-pivot-waterbed-hero-1200x900.jpg')
bed = Bed.new(
  title: "Sleep on a cloud",
  category: "water",
  location: "Calle de Montesa, 39, 28006 Madrid",
  price: 2,
  description: "Ocean sound is included. Feel the beach in Madrid.",
  user: User.find(1)
)
bed.photo.attach(io: file, filename: 'bed.png', content_type: 'image/png')
bed.save!

file = URI.open('https://images-na.ssl-images-amazon.com/images/I/51xl%2B1yzRjL._SS400_.jpg')
bed = Bed.new(
  title: "Super relaxing on a rooftop",
  category: "hammock",
  location: "Calle del Dr. Castelo, 30, 28009 Madrid",
  price: 1,
  description: "Colourful terasse with techno music. Enjoy your relaxing Nap.",
  user: User.find(1)
)
bed.photo.attach(io: file, filename: 'bed.png', content_type: 'image/png')
bed.save!

file = URI.open('https://images-na.ssl-images-amazon.com/images/I/51fTmNm%2BUTL._AC_SX466_.jpg')
bed = Bed.new(
  title: "Princessbed for a night",
  category: "car",
  location: "Calle de Goya, 87, 28001 Madrid",
  price: 5000,
  description: "Princess Car to rent for every princess in the world.",
  user: User.find(1)
)
bed.photo.attach(io: file, filename: 'bed.png', content_type: 'image/png')
bed.save!


puts "Created four beds"
