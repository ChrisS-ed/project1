# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all

Artist.create!(name: 'Lazy Susan', description: 'The 2014 Foster’s Edinburgh Comedy Award Best Newcomer nominees.', image: 'blank')
Artist.create!(name: 'Ed Eales-White and Jon Pointing', description: 'Writers and performers of BBC mini series Life Guru.', image: 'blank')
Artist.create!(name: 'Babolin Theatre', description: 'Cambridge-based professional theatre company for young people.', image: 'blank')
Artist.create!(name: 'Knuckle and Joint', description: 'Puppetry company based in Canterbury.', image: 'blank')
Artist.create!(name: 'Royal Over-Seas League', description: 'Award-winning musicians including Charlotte Ashton flute, Solem Quartet, Zelkova Quartet, Quattro (cello quartet), Françoise-Green piano duo, pianists Jan Hugo and Alexander Soares.', image: 'blank')

Venue.delete_all

Venue.create!(name: 'Pleasance Dome', location: 'Potterrow, EH8 9AL', image: 'blank')
Venue.create!(name: 'Pleasance Courtyard', location: '60 Pleasance, EH8 9TJ', image: 'blank')
Venue.create!(name: 'Bedlam Theatre', location: '11b Bristo Place, EH1 1EZ', image: 'blank')
Venue.create!(name: 'Surgeons Hall', location: 'Nicolson Street, EH8 9DW', image: 'blank')
Venue.create!(name: 'Royal Over-Seas League', location: 'Over-Seas House, EH2 3AB', image: 'blank')


