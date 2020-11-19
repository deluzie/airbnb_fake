# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.delete_all

Workshop.delete_all

User.delete_all

user = User.create(
  email: "luzie@luzie.com",
  password: "testing",
  )


1.times do |counter|

  workshop = Workshop.new(
    title: "Shared Music Studio",
    description: "I am offering a big shared music studio space located in Neukölln. We offer spaces for bands and musicians on a daily basis.
    Get a space in one of our 4 rooms to enjoy our exclusive concept :15h of use per week, flexible slots, private storage, full backline, self-access, homely vibes.",
    address: "Karl-Marx Str 277 Berlin 1057",
    category: "Music",
    equipment: "Speakers, Computers, Mixers, Recording Gear, AMPs",
    price: "20€"
    )
  workshop.user = user

  file = URI.open('https://i.pinimg.com/originals/b9/00/44/b9004424c0160414f2b7bfbd23b65847.jpg')
  workshop.photos.attach(io: file, filename: "nes_#{counter}.png", content_type: 'image/png')

  workshop.save!
end


1.times do |counter|

  workshop = Workshop.new(
    title: "Wood-Workshop",
    description: "Workshop Space shared by in total 5 artists/designers (including new tenant). 75 sqm, 3. Etage. We are a team of four people working on small furniture making, art works and small set design. The woodshop is connected to a studio...",
    address: "Choriner Straße 33, Berlin 10433",
    category: "Woodwork",
    equipment: "Tables, Saw",
    price: "15€"
    )
  workshop.user = user

  file = URI.open('https://static.woodmagazine.com/s3fs-public/image/2016/12/29/WD309237.gif')
  workshop.photos.attach(io: file, filename: "nes_#{counter}.png", content_type: 'image/png')

  workshop.save!
end


1.times do |counter|

  workshop = Workshop.new(
    title: "Hugh Photo Studio ",
    description: "Dear photographers, artists, creatives! Our photo studio equipped with several backgrounds, two flashlights, soft boxes, reflectors, professional photo printer for A2 is available for rent or co-use. There exists the possibility to combine with a desk space in a
    collective working area (from 325 €/month incl. 19% VAT). We are looking for photographers, videographers and photo artists to join our collective studio loft. The space is unique and located in a super interesting creative compound, well-connected with public transport and
    close to the Ringbahn, close to Prenzlauser Berg, Mitte, Friedrichshain.The space is very well equipped with a kitchen, own bathroom with shower (no living!), a separate big container for storage, all sorts of tools, tables, projector and a wide range of technical equipment. On the
    compound there is also a professional photo printing studio where you can print up to 160 cm by 300cm!",
    address: "Herzberg Straße 40-43, Berlin 12109",
    category: "Photostudio",
    equipment: "Lights, Greenscreen",
    price: "10€",
    )
  workshop.user = user

  file = URI.open('https://s3-eu-central-1.amazonaws.com/dp-web-resources-wp/wp-content/uploads/2019/12/09151021/How-to-create-a-small-DIY-photo-studio-on-a-budget.-Step-by-step-setup.jpg')
  workshop.photos.attach(io: file, filename: "nes_#{counter}.png", content_type: 'image/png')

  workshop.save!
end


1.times do |counter|

  workshop = Workshop.new(
    title: "Small Ceramic Studio",
    description: "The studio is in total about 78m2, has high ceiling, large common work area, shelf spaces, 2 different kilns and more.
As one of the four regular member, you'd have your personal work space, access to the studio 24/7, access to kiln, tools Internet, etc.",
    address: "Gehringstraße 53, Berlin 13088",
    category: "Ceramics",
    equipment: "Calipers,Trivet Frames,Clay and Color Shapers",
    price: "7€",
    )
  workshop.user = user

  file = URI.open('https://i.pinimg.com/originals/01/89/12/01891268879c99e886018890bd359462.jpg')
  workshop.photos.attach(io: file, filename: "nes_#{counter}.png", content_type: 'image/png')

  workshop.save!
end

1.times do |counter|

  workshop = Workshop.new(
    title: "Cozy Atelier",
    description: "I offers various rooms for artists and creatives with a supportive rental price. The 140 individually used studios at AF range between 12 and 144 sqm. Shared pantry room are located on all floors. An interdisciplinary exchange with the other studio users can take place there or in the in-house KANTINE, or at the pop-up bar RAMPE – BAR & BARBECUE. If a larger project is pending, larger rooms in the house can be used temporarily. It is also possible to organize exhibitions and presentations independently.
    The work spaces can be reached by staircases, a passenger and a freight elevator. ",
    address: "Katharinenstraße 1, Berlin 10711",
    category: "Painting",
    equipment: "Tables, Brushes, Paint",
    price: "13€",
    )
  workshop.user = user

  file = URI.open('https://fotos02.mallorcazeitung.es/2018/12/20/690x278/miro-mallorca.jpg')
  workshop.photos.attach(io: file, filename: "nes_#{counter}.png", content_type: 'image/png')

  workshop.save!
end

1.times do |counter|

  workshop = Workshop.new(
    title: "Shared Sewing Studio",
    description: "The craft behind fashion design is something that is not easily acquired.  Understanding the aesthetics of fashion is one thing, possessing the know how to actually sit down and make the garment is quite another.
Though you may know them as a great place to learn how to sew while meeting new people and just having a darn good time, ",
    address: "Löwestraße 10, Berlin 10249",
    category: "Sewing ",
    equipment: "Tables, Garn, Sewing-Machien",
    price: "10€",
    )
  workshop.user = user

  file = URI.open('https://i.ytimg.com/vi/viz8Sw36X_o/maxresdefault.jpg')
  workshop.photos.attach(io: file, filename: "nes_#{counter}.png", content_type: 'image/png')

  workshop.save!
end


