# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Workshop.delete_all

user = User.find(1)

10.times do
  workshop = Workshop.new(
    title: "Cozy Workshop in Berlin",
    description: "Very large studio space with lots of equipment to work on all of your projects",
    address: "123 Fake ST",
    category: "Ceramics",
    equipment: "Tables"
    )
  workshop.user = user
  workshop.save
end

