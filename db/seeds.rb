# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  Restaurant.create!(
    name: Faker::Company.name,
    capacity: Faker::Number.between(10, 100),
    opens_at: rand(400).minutes.ago,
    closes_at: rand(400).minutes.from_now
  )
end