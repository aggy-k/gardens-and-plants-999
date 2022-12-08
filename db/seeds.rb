Garden.destroy_all if Rails.env.development?

Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

# Seed the plants
plants = [
  {
    name: "Montstera",
    image_url: "https://res.cloudinary.com/dztwrgpbi/image/upload/v1670036437/random_media_livecode/plant01.png"
  },
  {
    name: "Dieff",
    image_url: "https://res.cloudinary.com/dztwrgpbi/image/upload/v1670036441/random_media_livecode/plant06.png"
  },
  {
    name: "Philo",
    image_url: "https://res.cloudinary.com/dztwrgpbi/image/upload/v1670039070/random_media_livecode/plant08.png"
  },
]

plants.each do |plant|
  plant = Plant.create(
    name: plant[:name],
    image_url: plant[:image_url],
    garden: Garden.first
  )
  puts "Created plant #{plant.name}"
end

Tag.destroy_all if Rails.env.development?

names = %w(Fruit\ tree Cactus Greasy\ plant Flower Ferns Conifers)

names.each do |name|
  Tag.create!(name: name)
end
