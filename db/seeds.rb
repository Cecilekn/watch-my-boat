# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Boat.destroy_all
Service.destroy_all
Package.destroy_all
Item.destroy_all
Booking.destroy_all
Picture.destroy_all


u1 = User.new(
  first_name: "Toto",
  last_name: "Toto",
  email: "t@t.com",
  password: "123456",
  phone_number: "0607080910",
  photo: "test",
  address: "Villa Gaudelet",
  manager: false
  )
u1.save!

u2 = User.new(
  first_name: "Marie-Amandine",
  last_name: "Chevalier",
  email: "mac@gmail.com",
  password: "123456",
  phone_number: "0607080910",
  photo: "test",
  address: "Villa Gaudelet",
  manager: true
  )
u2.save!

puts "All users created"

b1 = Boat.new(
  name: "Lili",
  address: "Villa Gaudelet",
  photo: "test"
  )
b1.owner = u1
b1.manager = u2
b1.save!

puts "All boats created"

service1 = Service.new(title: "Nettoyer la cabine")
service1.save!

service2 = Service.new(title: "Faire les courses")
service2.save!

service3 = Service.new(title: "Réparer la coque")
service3.save!

puts "All services created"

package1 = Package.new(
  title: "Préparer mon arrivée",
  description: "Lorem epsum",
  price_cents: 540,
  price_currency: "EUR"
  )
package1.save!

package2 = Package.new(
  title: "Service de maintenance",
  description: "Lorem epsum",
  price_cents: 780,
  price_currency: "EUR"
  )
package2.save!

puts "All packages created"

item1 = Item.new
item1.service = service1
item1.package = package1
item.save!

item2 = Item.new
item2.service = service2
item2.package = package1
item2.save!

item3 = Item.new
item3.service = service3
item3.package = package2
item3.save!

puts "All items created"

booking1 = Booking.new(
  status: "En cours",
  date: Date.today,
  comment: "test"
  )
booking1.package = package1
booking1.boat = boat1
booking1.save!

puts "All bookings created"

picture1 = Picture.new(photo: "test url")
picture1.booking = booking1
picture1.save!

