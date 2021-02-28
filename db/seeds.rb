# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", know_for: "Sherlock" })
actor.save
mymovie = Movie.create({ title: "Coming to America", year: 1988, plot: "Pampered Prince goes to NY to find love" })
mymovie = Movie.create({ title: "Big", year: 1986, plot: "40 year old man suddenly turns 12 years old" })
mymovie = Movie.create({ title: "Step Brothers", year: 2002, plot: "40 year old losers become step brothers" })
mymovie.save
