# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

prince = Artist.create(name: "Prince", bio: "Awesome bio")
ccr = Artist.create(name: "CCR", bio: "another bio")

rock = Genre.create(name: "Rock")

Song.create(name: "Purple Rain", artist_id: 1, genre_id: 1)
Song.create(name: "Bad Moon Rising", artist_id: 2, genre_id: 1)