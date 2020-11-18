# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Workshop.delete_all

User.delete_all

user = User.create(
  email: "luzie@luzie.com",
  password: "testing",
  )

5.times do |counter|

  workshop = Workshop.new(
    title: "Cozy Workshop in Berlin",
    description: "Very large studio space with lots of equipment to work on all of your projects",
    address: "123 Fake ST",
    category: "Ceramics",
    equipment: "Tables"
    )
  workshop.user = user

  file = URI.open('https://i.picsum.photos/id/993/200/300.jpg?hmac=wwmtancuL0E4SpM9dBnkL-0sXQCflrwn9mJZgo0GNKo')
  workshop.photos.attach(io: file, filename: "nes_#{counter}.png", content_type: 'image/png')

  workshop.save!
end

