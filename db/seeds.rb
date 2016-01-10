# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all

a1 = Artist.create!(name: 'Lazy Susan', description: 'The 2014 Foster’s Edinburgh Comedy Award Best Newcomer nominees.', image: 'blank')
a2 = Artist.create!(name: 'Ed Eales-White and Jon Pointing', description: 'Writers and performers of BBC mini series Life Guru.', image: 'blank')
a3 = Artist.create!(name: 'Babolin Theatre', description: 'Cambridge-based professional theatre company for young people.', image: 'blank')
a4 = Artist.create!(name: 'Knuckle and Joint', description: 'Puppetry company based in Canterbury.', image: 'blank')
a5 = Artist.create!(name: 'Royal Over-Seas League', description: 'Award-winning musicians including Charlotte Ashton flute, Solem Quartet, Zelkova Quartet, Quattro (cello quartet), Françoise-Green piano duo, pianists Jan Hugo and Alexander Soares.', image: 'blank')

Venue.delete_all

v1 = Venue.create!(name: 'Pleasance Dome', location: 'Potterrow, EH8 9AL', image: 'blank')
v2 = Venue.create!(name: 'Pleasance Courtyard', location: '60 Pleasance, EH8 9TJ', image: 'blank')
v3 = Venue.create!(name: 'Bedlam Theatre', location: '11b Bristo Place, EH1 1EZ', image: 'blank')
v4 = Venue.create!(name: 'Surgeons Hall', location: 'Nicolson Street, EH8 9DW', image: 'blank')
v5 = Venue.create!(name: 'Royal Over-Seas League', location: 'Over-Seas House, EH2 3AB', image: 'blank')

Gig.delete_all

Gig.create!(name: 'Double Act', description: 'Lazy Susan stand side by side, sling on some wigs and take a few long shots at triumph. Watch as they make pacts, shake hands and get drunk on fiction. Character comedy that shoots straight from the hip: come get a slice of the zeal.', artist_id: a1.id, venue_id: v1.id, tickets_available: 100, start_time: '2016-08-31 20:10:00', end_time: '2016-08-31 21:10:00')


