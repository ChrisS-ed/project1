# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all

a1 = Artist.create!(name: 'Lazy Susan', description: 'The 2014 Foster’s Edinburgh Comedy Award Best Newcomer nominees.', image: '2015LAZYSUS_PS.jpg')
a2 = Artist.create!(name: 'Ed Eales-White and Jon Pointing', description: 'Writers and performers of BBC mini series Life Guru.', image: '2015BUCKET_PI.jpg')
a3 = Artist.create!(name: 'Babolin Theatre', description: 'Cambridge-based professional theatre company for young people.', image: '2015FRANTIC_BD.jpg')
a4 = Artist.create!(name: 'Knuckle and Joint', description: 'Puppetry company based in Canterbury.', image: '2015BLACKHO_3T.jpg')
a5 = Artist.create!(name: 'Royal Over-Seas League', description: 'Award-winning musicians including Charlotte Ashton flute, Solem Quartet, Zelkova Quartet, Quattro (cello quartet), Françoise-Green piano duo, pianists Jan Hugo and Alexander Soares.', image: 'ROSL.jpg')

Venue.delete_all

v1 = Venue.create!(name: 'Pleasance Dome', location: 'Potterrow, EH8 9AL', image: 'pleasance_dome.jpg')
v2 = Venue.create!(name: 'Pleasance Courtyard', location: '60 Pleasance, EH8 9TJ', image: 'pleasance_courtyard.jpg')
v3 = Venue.create!(name: 'Bedlam Theatre', location: '11b Bristo Place, EH1 1EZ', image: 'bedlam.jpg')
v4 = Venue.create!(name: 'Surgeons Hall', location: 'Nicolson Street, EH8 9DW', image: 'surgeons_hall.jpg')
v5 = Venue.create!(name: 'Royal Over-Seas League', location: 'Over-Seas House, EH2 3AB', image: 'overseas_house.jpg')

Gig.delete_all

g1 = Gig.create!(name: 'Double Act', description: 'Lazy Susan stand side by side, sling on some wigs and take a few long shots at triumph. Watch as they make pacts, shake hands and get drunk on fiction. Character comedy that shoots straight from the hip: come get a slice of the zeal.', artist_id: a1.id, venue_id: v1.id, ticket_price: 10, tickets_available: 100, start_time: '2016-08-31 20:10:00', end_time: '2016-08-31 21:10:00', keywords: 'comedy duo, sketches')
g2 = Gig.create!(name: 'Bucket', description: 'Ed Eales-White and Jon Pointing slam down a new character/sketch/double-act comedy show.', artist_id: a2.id, venue_id: v2.id, ticket_price: 8, tickets_available: 50, start_time: '2016-08-30 18:00:00', end_time: '2016-08-30 19:00:00', keywords: 'comedy duo, sketches')
g3 = Gig.create!(name: 'The Frantic Canticles of Little Brother Fish', description: 'Babolin welcome you to their monastery in deepest Depravia, where choristers chant and goose quills frantically scratch out the chronicle of an ancient quest.', artist_id: a3.id, venue_id: v3.id, ticket_price: 15, tickets_available: 300, start_time: '2016-08-22 13:30:00', end_time: '2016-08-22 14:30:00', keywords: 'theatre, monks')
g4 = Gig.create!(name: 'The Black Hoods Cabaret', description: 'Bear witness to the debauchery and murder of some of the most decrepit puppets to crawl out of a back alley. A puppet cabaret for adults that will charm you into darkness and mayhem, as a pair of calamitous puppeteers manipulate a variety of disturbed and troubled puppets.', artist_id: a4.id, venue_id: v4.id, ticket_price: 9, tickets_available: 150, start_time: '2016-08-22 22:10:00', end_time: '2016-08-22 23:10:00', keywords: 'puppets, puppetry, cabaret')
g5 = Gig.create!(name: 'Mozart at Teatime', description: 'Different artists and programmes each concert. Tea/coffee shortbread afterwards included.', artist_id: a5.id, venue_id: v5.id, ticket_price: 6, tickets_available: 100, start_time: '2016-08-19 16:00:00', end_time: '2016-08-19 17:00:00', keywords: 'classical music')

User.delete_all

u1 = User.create!(email: 'test@email.com', password: '12345678')

Booking.delete_all

Booking.create!(seats: 2, user_id: u1.id, gig_id: g1.id)


