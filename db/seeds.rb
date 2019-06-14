# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.destroy_all
Item.destroy_all
Package.destroy_all
Task.destroy_all
Provider.destroy_all
Booking.destroy_all
Picture.destroy_all
Boat.destroy_all
Dimension.destroy_all
Category.destroy_all
User.destroy_all

guillaume = User.new(
  first_name: "Guillaume",
  last_name: "Peterschmitt",
  email: "guillaume.peterschmitt@gmail.com",
  password: "123456",
  phone_number: "0782580253",
  address: "Paris",
  manager: false
  )
guillaume.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1560440976/_JBU5653-3_Guillaume_PETERSCHMITT_ki3ufr.jpg"
guillaume.save!

celia = User.new(
  first_name: "Célia",
  last_name: "Heidsieck",
  email: "celia.heidsieck@hotmail.fr",
  password: "123456",
  phone_number: "0612140043",
  address: "Paris",
  manager: false
  )
celia.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1560444098/_JBU5815-3_Celia_Heidsieck_daitae.jpg"
celia.save!

cecile = User.new(
  first_name: "Cécile",
  last_name: "Kwan Ning",
  email: "cecile.kwan-ning16@orange.fr",
  password: "123456",
  phone_number: "0670830910",
  address: "Paris",
  manager: false
  )
cecile.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1560444106/_JBU5945-3_Cecile_Kwan_Ning_nmdavj.jpg"
cecile.save!

concierge1 = User.new(
  first_name: "Marie-Amandine",
  last_name: "Chevalier",
  email: "marie@gmail.com",
  password: "123456",
  phone_number: "0681069061",
  address: "Saint-Tropez",
  description: "Marie-Amandine s’est forgée une expérience professionnelle dans le tourisme nautique tout autour du monde (organisation de croisières). De retour dans sa Provence natale, elle met aujourd'hui son expertise au service des plaisanciers varois.",
  manager: true
  )
concierge1.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1560441455/MarieAmandineChevalier_gais33.jpg"
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
boat1.owner = guillaume
boat1.manager = concierge1
boat1.category = voilier
boat1.dimension = small
boat1.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1560498070/newlili_clo72u.jpg"
boat1.save!

boat2 = Boat.new(
  name: "Will Be Fine",
  address: "Saint-Tropez"
  )
boat2.owner = celia
boat2.manager = concierge1
boat2.category = voilier
boat2.dimension = small
boat2.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1560501544/Boat_demo_6_beq37c.jpg"
boat2.save!

boat3 = Boat.new(
  name: "Marcaro",
  address: "Saint-Maxime"
  )
boat3.owner = cecile
boat3.manager = concierge1
boat3.category = voilier
boat3.dimension = small
boat3.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1559142909/bmsvjoc78fvgn0cxjcyu.jpg"
boat3.save!


puts "All boats created"

visite_mensuelle = Service.new(title: "Visite mensuelle du concierge")
visite_mensuelle.save!

transport = Service.new(title: "Transport de votre bateau depuis ou vers votre port d'attache")
transport.save!

nettoyage_interieur = Service.new(title: "Nettoyage intérieur (aspirateur, aération, poussière)")
nettoyage_interieur.save!

nettoyage_exterieur = Service.new(title: "Nettoyage extérieur (pont, cockpit, coffres)")
nettoyage_exterieur.save!

essence = Service.new(title: "Plein d'essence")
essence.save!

achats = Service.new(title: "Achat, livraison et rangement de vos courses à bord")
achats.save!

fermeture = Service.new(title: "Fermeture du bateau (eau, gaz, électricité)")
fermeture.save!

vidange = Service.new(title: "Vidange de la cuve et du circuit")
vidange.save!

reparation = Service.new(title: "Réparation de la coque")
reparation.save!

appel = Service.new(title: "Appel du concierge")
appel.save!

puts "All services created"


abo1 = Package.new(
  title: "Abonnement Watch My Boat",
  description: "Tous les mois, votre concierge effectue une visite de contrôle sur votre bateau et vous informe sur son état extérieur.",
  price: 19.00,
  kind: "abonnement"
  )
abo1.category = moteur
abo1.dimension = small
abo1.save!

abo2 = Package.new(
  title: "Abonnement Watch My Boat",
  description: "Tous les mois, votre concierge effectue une visite de contrôle sur votre bateau et vous informe sur son état extérieur.",
  price: 29.00,
  kind: "abonnement"
  )
abo2.category = moteur
abo2.dimension = medium
abo2.save!

abo3 = Package.new(
  title: "Abonnement Watch My Boat",
  description: "Tous les mois, votre concierge effectue une visite de contrôle sur votre bateau et vous informe sur son état extérieur.",
  price: 39.00,
  kind: "abonnement"
  )
abo3.category = moteur
abo3.dimension = large
abo3.save!

abo4 = Package.new(
  title: "Abonnement Watch My Boat",
  description: "Tous les mois, votre concierge effectue une visite de contrôle sur votre bateau et vous informe sur son état extérieur.",
  price: 15.00,
  kind: "abonnement"
  )
abo4.category = voilier
abo4.dimension = small
abo4.save!

abo5 = Package.new(
  title: "Abonnement Watch My Boat",
  description: "Tous les mois, votre concierge effectue une visite de contrôle sur votre bateau et vous informe sur son état extérieur.",
  price: 25.00,
  kind: "abonnement"
  )
abo5.category = voilier
abo5.dimension = medium
abo5.save!

abo6 = Package.new(
  title: "Abonnement Watch My Boat",
  description: "Tous les mois, votre concierge effectue une visite de contrôle sur votre bateau et vous informe sur son état extérieur.",
  price: 35.00,
  kind: "abonnement"
  )
abo6.category = voilier
abo6.dimension = large
abo6.save!


offre1 = Package.new(
  title: "Convoyage",
  description: "Envie de naviguer au départ d'un autre port ? Gagnez du temps sur vos vacances, nous emmenons ou ramenons votre bateau pour vous.",
  price: 199.00,
  kind: "offre"
  )
offre1.photo = 'convoyage.jpg'
offre1.save!

offre2 = Package.new(
  title: "Départ",
  description: "Impatient de naviguer ? Gagnez de précieuses heures, nous préparons tout pour votre prochaine sortie en mer !",
  price: 150.00,
  kind: "offre"
  )
offre2.photo = 'sortie.jpg'
offre2.save!

offre3 = Package.new(
  title: "Maintenance",
  description: "Un pépin sur votre bateau ? Rassurez-vous, nous confions votre bateau à des prestataires pour divers travaux de maintenance.",
  price: 199.00,
  kind: "offre"
  )
offre3.photo = 'maintenance.jpg'
offre3.save!

offre4 = Package.new(
  title: "Hivernage",
  description: "C'est la fin de la saison ? Ne vous souciez de rien, nous gérons pour vous l'hivernage complet de votre bateau.",
  price: 110.00,
  kind: "offre"
  )
offre4.photo = 'hivernage.jpg'
offre4.save!

rdv_concierge = Package.new(
  title: "Appel avec votre concierge",
  description: "Première prise de contact",
  price: 0,
  kind: "autre"
  )
rdv_concierge.save!

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
item1.service = transport
item1.package = offre1
item1.save!

item2 = Item.new
item2.service = nettoyage_interieur
item2.package = offre2
item2.save!

item3 = Item.new
item3.service = nettoyage_exterieur
item3.package = offre2
item3.save!

item4 = Item.new
item4.service = achats
item4.package = offre2
item4.save!

item6 = Item.new
item6.service = essence
item6.package = offre2
item6.save!

item7 = Item.new
item7.service = reparation
item7.package = offre3
item7.save!

item8 = Item.new
item8.service = fermeture
item8.package = offre4
item8.save!

item9 = Item.new
item9.service = vidange
item9.package = offre4
item9.save!

puts "All items created"

visite_janvier = Booking.new(
  title: "Visite de janvier",
  completed: true,
  date: '2019-01-14',
  comment: "Votre parre-battage arrière-gauche est détaché."
  )
visite_janvier.package = abo1
visite_janvier.boat = boat1
visite_janvier.save!

visite_fevrier = Booking.new(
  title: "Visite de février",
  completed: true,
  date: '2019-02-14',
  comment: "J'ai resserré toutes les amarres."
  )
visite_fevrier.package = abo1
visite_fevrier.boat = boat1
visite_fevrier.save!

visite_mars = Booking.new(
  title: "Visite de mars",
  completed: true,
  date: '2019-03-14',
  comment: "Rien à signaler, tout va bien."
  )
visite_mars.package = abo1
visite_mars.boat = boat1
visite_mars.save!

visite_avril = Booking.new(
  title: "Visite de avril",
  completed: true,
  date: '2019-04-14',
  comment: "A votre demande, j'ai remplacé la capote."
  )
visite_avril.package = abo1
visite_avril.boat = boat1
visite_avril.save!

visite_mai = Booking.new(
  title: "Visite de mai",
  completed: true,
  date: '2019-05-14',
  comment: "Un nettoyage des coffres extérieurs serait le bienvenu.",
  check1: true,
  check2: true,
  check3: false,
  check4: true,
  check5: false,
  check6: true,
  check7: true,
  check8: true
  )
visite_mai.package = abo1
visite_mai.boat = boat1
visite_mai.save!

visite_juin = Booking.new(
  title: "Visite de juin",
  completed: false,
  date: '2019-06-14',
  comment: ""
  )
visite_juin.package = abo1
visite_juin.boat = boat1
visite_juin.save!

visite_juillet = Booking.new(
  title: "Visite de juillet",
  completed: false,
  date: '2019-07-14',
  comment: ""
  )
visite_juillet.package = abo1
visite_juillet.boat = boat1
visite_juillet.save!

visite_aout = Booking.new(
  title: "Visite de aout",
  completed: false,
  date: '2019-08-14',
  comment: ""
  )
visite_aout.package = abo1
visite_aout.boat = boat1
visite_aout.save!

visite_septembre = Booking.new(
  title: "Visite de septembre",
  completed: false,
  date: '2019-09-14',
  comment: ""
  )
visite_septembre.package = abo1
visite_septembre.boat = boat1
visite_septembre.save!

visite_octobre = Booking.new(
  title: "Visite de octobre",
  completed: false,
  date: '2019-10-14',
  comment: ""
  )
visite_octobre.package = abo1
visite_octobre.boat = boat1
visite_octobre.save!

visite_novembre = Booking.new(
  title: "Visite de novembre",
  completed: false,
  date: '2019-11-14',
  comment: ""
  )
visite_novembre.package = abo1
visite_novembre.boat = boat1
visite_novembre.save!

visite_decembre = Booking.new(
  title: "Visite de decembre",
  completed: false,
  date: '2019-12-14',
  comment: ""
  )
visite_decembre.package = abo1
visite_decembre.boat = boat1
visite_decembre.save!

booking1 = Booking.new(
  title: "Départ",
  completed: false,
  date: '2019-06-18 15:20',
  comment: ""
  )
booking1.package = offre2
booking1.boat = boat1
booking1.save!

visite_mai_celia = Booking.new(
  title: "Visite de mai",
  completed: true,
  date: '2019-05-15',
  comment: "J'ai resserré les amarres suite au coup de vent.",
  check1: true,
  check2: true,
  check3: false,
  check4: true,
  check5: false,
  check6: true,
  check7: true,
  check8: true
  )
visite_mai_celia.package = abo1
visite_mai_celia.boat = boat2
visite_mai_celia.save!

visite_juin_celia = Booking.new(
  title: "Visite de juin",
  completed: false,
  date: '2019-06-15',
  comment: ""
  )
visite_juin_celia.package = abo1
visite_juin_celia.boat = boat2
visite_juin_celia.save!

visite_mai_cecile = Booking.new(
  title: "Visite de mai",
  completed: true,
  date: '2019-05-15',
  comment: "La tempête de sable a sali le pont.",
  check1: true,
  check2: true,
  check3: false,
  check4: true,
  check5: false,
  check6: true,
  check7: true,
  check8: true
  )
visite_mai_cecile.package = abo1
visite_mai_cecile.boat = boat3
visite_mai_cecile.save!

visite_juin_cecile = Booking.new(
  title: "Visite de juin",
  completed: false,
  date: '2019-06-15',
  comment: ""
  )
visite_juin_cecile.package = abo1
visite_juin_cecile.boat = boat3
visite_juin_cecile.save!

puts "All bookings created"

picture1_mai = Picture.new
picture1_mai.booking = visite_mai
picture1_mai.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1560458852/pexels-photo-42112_cx8v7h.jpg"
picture1_mai.save!

picture2_mai = Picture.new
picture2_mai.booking = visite_mai
picture2_mai.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1560458892/interieur_catamaran_vqmlsa.jpg"
picture2_mai.save!

picture1_mai_celia = Picture.new
picture1_mai_celia.booking = visite_mai_celia
picture1_mai_celia.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1560501544/Boat_demo_6_beq37c.jpg"
picture1_mai_celia.save!

picture1_mai_cecile = Picture.new
picture1_mai_cecile.booking = visite_mai_cecile
picture1_mai_cecile.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1559142909/bmsvjoc78fvgn0cxjcyu.jpg"
picture1_mai_cecile.save!

puts "All pictures created"

provider1 = Provider.new(name: "Riviera Nautique")
provider1.manager = concierge1
provider1.save!
puts "All providers created"

puts "All tasks created"

