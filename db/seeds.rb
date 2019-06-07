# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Dimension.destroy_all
Category.destroy_all
Boat.destroy_all
Service.destroy_all
Package.destroy_all
Item.destroy_all
Booking.destroy_all
Picture.destroy_all

sebastien = User.new(
  first_name: "Sebastien",
  last_name: "Dupont",
  email: "seb@gmail.com",
  password: "123456",
  phone_number: "0607080910",
  address: "Courbevoie",
  manager: false
  )
sebastien.remote_photo_url = "https://www.vendeeglobe.org/medias/02/03/20346/portrait-du-skipper-suisse-alan-roura-r-1680-1200.jpg"
sebastien.save!

concierge1 = User.new(
  first_name: "Thierry",
  last_name: "Dujardin",
  email: "thierry@gmail.com",
  password: "123456",
  phone_number: "0607080910",
  address: "Saint-Tropez",
  description: "Diplomé de l'Ecole navale en 1998 et formateur maritime dans la marine marchande pendant plus de 20 ans, Thierry met aujourd'hui son expertise et son carnet d'adresses au service des plaisanciers dans le Var."
  manager: true
  )
concierge1.remote_photo_url = "https://cdn.radiofrance.fr/s3/cruiser-production/2016/11/8be75fd1-bcc5-4792-880f-af90ccd4a9d9/640_000_hq55j.jpg"
concierge1.save!

puts "All users created"

small = Dimension.new(meter: "< 10m")
small.save!

medium = Dimension.new(meter: "10-20m")
medium.save!

large = Dimension.new(meter: "> 20m")
large.save!

voilier = Category.new(name: "Voilier")
voilier.save!

moteur = Category.new(name: "Moteur")
moteur.save!

puts "Dimensions and Categories created"


boat1 = Boat.new(
  name: "Lili",
  address: "Saint-Tropez"
  )
boat1.owner = sebastien
boat1.manager = concierge1
boat1.category = voilier
boat1.dimension = small
boat1.remote_photo_url = "https://cdn.pixabay.com/photo/2016/08/14/18/27/sailing-boat-1593613_1280.jpg"
boat1.save!

puts "All boats created"

visite_mensuelle = Service.new(title: "Visite mensuelle du concierge")
visite_mensuelle.save!

appel = Service.new(title: "Appel du concierge")
appel.save!

nettoyage_interieur = Service.new(title: "Nettoyage intérieur de votre bateau (aspirateur, aération, poussière).")
nettoyage_interieur.save!

nettoyage_exterieur = Service.new(title: "Nettoyage et rinçage de l'extérieur de votre bateau à l'eau douce.")
nettoyage_exterieur.save!

transport = Service.new(title: "Transport de votre bateau depuis ou vers votre port d'attache.")
transport.save!

fermeture = Service.new(title: "Fermeture du bateau (eau, gaz, électricité).")
fermeture.save!

vidange = Service.new(title: "Vidange de la cuve.")
vidange.save!

achats = Service.new(title: "Achat de vos courses")
achats.save!

livraison = Service.new(title: "Livraison au bateau")
livraison.save!

rangement = Service.new(title: "Rangement à votre bord")
rangement.save!

puts "All services created"


abo1 = Package.new(
  title: "Abonnement Watch My Boat",
  description: "Tous les mois, votre concierge effectue une visite de contrôle sur votre bateau et vous informe sur son état extérieur.",
  price_cents: 9900,
  price_currency: "EUR",
  kind: "abonnement"
  )
abo1.category = moteur
abo1.dimension = small
abo1.save!

abo2 = Package.new(
  title: "Abonnement Watch My Boat",
  description: "Tous les mois, votre concierge effectue une visite de contrôle sur votre bateau et vous informe sur son état extérieur.",
  price_cents: 9900,
  price_currency: "EUR",
  kind: "abonnement"
  )
abo2.category = moteur
abo2.dimension = medium
abo2.save!

abo3 = Package.new(
  title: "Abonnement Watch My Boat",
  description: "Tous les mois, votre concierge effectue une visite de contrôle sur votre bateau et vous informe sur son état extérieur.",
  price_cents: 9900,
  price_currency: "EUR",
  kind: "abonnement"
  )
abo3.category = moteur
abo3.dimension = large
abo3.save!

abo4 = Package.new(
  title: "Abonnement Watch My Boat",
  description: "Tous les mois, votre concierge effectue une visite de contrôle sur votre bateau et vous informe sur son état extérieur.",
  price_cents: 9900,
  price_currency: "EUR",
  kind: "abonnement"
  )
abo4.category = voilier
abo4.dimension = small
abo4.save!

abo5 = Package.new(
  title: "Abonnement Watch My Boat",
  description: "Tous les mois, votre concierge effectue une visite de contrôle sur votre bateau et vous informe sur son état extérieur.",
  price_cents: 9900,
  price_currency: "EUR",
  kind: "abonnement"
  )
abo5.category = voilier
abo5.dimension = medium
abo5.save!

abo6 = Package.new(
  title: "Abonnement Watch My Boat",
  description: "Tous les mois, votre concierge effectue une visite de contrôle sur votre bateau et vous informe sur son état extérieur.",
  price_cents: 9900,
  price_currency: "EUR",
  kind: "abonnement"
  )
abo6.category = voilier
abo6.dimension = large
abo6.save!

rdv_concierge = Package.new(
  title: "Appel avec votre concierge",
  description: "Première prise de contact",
  price_cents: 0,
  price_currency: "EUR",
  kind: "autre"
  )

arrivee = Package.new(
  title: "Préparation de votre arrivée",
  description: "Partez l'esprit serein, nous nous occupons de préparer votre bateau avant votre arrivée!",
  price_cents: 780,
  price_currency: "EUR",
  kind: "offre"
  )
arrivee.save!

maintenance = Package.new(
  title: "Maintenance",
  description: "Un pépin sur votre bateau. Votre concierge intervient pour divers travaux de bricolage.",
  price_cents: 780,
  price_currency: "EUR",
  kind: "offre"
  )
maintenance.save!

hivernage = Package.new(
  title: "Préparation à l'hivernage",
  description: "Nettoyage intérieur et extérieur avant et après l’hiver. Hivernage des voiles et remontage, hivernage des circuits d’eau, du moteur de l’annexe",
  price_cents: 780,
  price_currency: "EUR",
  kind: "offre"
  )
hivernage.save!

convoyage = Package.new(
  title: "Convoyage",
  description: "Si vous souhaitez naviguer au départ ou repartir d’un autre port que celui de votre port d’attache et gagner du temps sur vos vacances, nous emmènerons ou ramènerons votre bateau pour vous.",
  price_cents: 19900,
  price_currency: "EUR",
  kind: "offre"
  )
convoyage.save!

avitaillement = Package.new(
  title: "Avitaillement",
  description: "Récupération de votre avitaillement au supermarché « Drive » proche du Port, livraison et rangement à votre bord",
  price_cents: 4900,
  price_currency: "EUR",
  kind: "offre"
  )

puts "All packages created"

item101 = Item.new
item101.service = visite_mensuelle
item101.package = abo1
item101.save!

item102 = Item.new
item102.service = visite_mensuelle
item102.package = abo2
item102.save!

item103 = Item.new
item103.service = visite_mensuelle
item103.package = abo3
item103.save!

item104 = Item.new
item104.service = visite_mensuelle
item104.package = abo4
item104.save!

item105 = Item.new
item105.service = visite_mensuelle
item105.package = abo5
item105.save!

item106 = Item.new
item106.service = visite_mensuelle
item106.package = abo6
item106.save!

item1 = Item.new
item1.service = nettoyage_interieur
item1.package = arrivee
item1.save!

item2 = Item.new
item2.service = nettoyage_exterieur
item2.package = arrivee
item2.save!

item3 = Item.new
item3.service = transport
item3.package = convoyage
item3.save!

item4 = Item.new
item4.service = fermeture
item4.package = hivernage
item4.save!

item5 = Item.new
item5.service = vidange
item5.package = hivernage
item5.save!

item6 = Item.new
item6.service = achats
item6.package = arrivee
item6.save!

item7 = Item.new
item7.service = livraison
item7.package = arrivee
item7.save!

item8 = Item.new
item8.service = rangement
item8.package = arrivee
item8.save!

item9 = Item.new
item9.service = achats
item9.package = avitaillement
item9.save!

item10 = Item.new
item10.service = livraison
item10.package = avitaillement
item10.save!

item11 = Item.new
item11.service = rangement
item11.package = avitaillement
item11.save!


puts "All items created"

visite_janvier = Booking.new(
  title: "Visite de janvier",
  status: "Réalisé",
  date: '2019-01-15',
  comment: "Votre parre-battage arrière-gauche est détaché."
  )
visite_janvier.package = abo1
visite_janvier.boat = boat1
visite_janvier.save!

visite_fevrier = Booking.new(
  title: "Visite de février",
  status: "Réalisé",
  date: '2019-02-15',
  comment: "J'ai resserré toutes les amarres."
  )
visite_fevrier.package = abo1
visite_fevrier.boat = boat1
visite_fevrier.save!

visite_mars = Booking.new(
  title: "Visite de mars",
  status: "Réalisé",
  date: '2019-03-15',
  comment: "Rien à signaler, tout va bien."
  )
visite_mars.package = abo1
visite_mars.boat = boat1
visite_mars.save!

visite_avril = Booking.new(
  title: "Visite de avril",
  status: "Réalisé",
  date: '2019-04-15',
  comment: "A votre demande, j'ai remplacé la capote."
  )
visite_avril.package = abo1
visite_avril.boat = boat1
visite_avril.save!

visite_mai = Booking.new(
  title: "Visite de mai",
  status: "Réalisé",
  date: '2019-05-15',
  comment: "Un nettoyage des coffres extérieurs serait le bienvenu"
  )
visite_mai.package = abo1
visite_mai.boat = boat1
visite_mai.save!

visite_juin = Booking.new(
  title: "Visite de juin",
  status: "A venir",
  date: '2019-06-15',
  comment: ""
  )
visite_juin.package = abo1
visite_juin.boat = boat1
visite_juin.save!

visite_juillet = Booking.new(
  title: "Visite de juillet",
  status: "A venir",
  date: '2019-07-15',
  comment: ""
  )
visite_juillet.package = abo1
visite_juillet.boat = boat1
visite_juillet.save!

visite_aout = Booking.new(
  title: "Visite de aout",
  status: "A venir",
  date: '2019-08-15',
  comment: ""
  )
visite_aout.package = abo1
visite_aout.boat = boat1
visite_aout.save!

visite_septembre = Booking.new(
  title: "Visite de septembre",
  status: "A venir",
  date: '2019-09-15',
  comment: ""
  )
visite_septembre.package = abo1
visite_septembre.boat = boat1
visite_septembre.save!

visite_octobre = Booking.new(
  title: "Visite de octobre",
  status: "A venir",
  date: '2019-10-15',
  comment: ""
  )
visite_octobre.package = abo1
visite_octobre.boat = boat1
visite_octobre.save!

visite_novembre = Booking.new(
  title: "Visite de novembre",
  status: "A venir",
  date: '2019-11-15',
  comment: ""
  )
visite_novembre.package = abo1
visite_novembre.boat = boat1
visite_novembre.save!

visite_decembre = Booking.new(
  title: "Visite de decembre",
  status: "A venir",
  date: '2019-12-15',
  comment: ""
  )
visite_decembre.package = abo1
visite_decembre.boat = boat1
visite_decembre.save!

mon_arrivee = Booking.new(
  title: "Préparer mon arrivéé",
  status: "A venir",
  date: Date.today,
  comment: ""
  )
mon_arrivee.package = arrivee
mon_arrivee.boat = boat1
mon_arrivee.save!


puts "All bookings created"


puts "All pictures created"

