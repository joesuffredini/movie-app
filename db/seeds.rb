# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# actor = Actor.create({ first_name: "Benedict", last_name: "Cumberbatch", know_for: "Sherlock" })
# actor = Actor.create({ first_name: "Will", last_name: "Ferrel", know_for: "Step Brothers" })
# actor = Actor.create({ first_name: "Eddie", last_name: "Murphy", know_for: "Coming to America" })
# actor = Actor.create({ first_name: "Robert", last_name: "Denro", know_for: "Godfather" })
# actor = Actor.create({ first_name: "Robert", last_name: "Downey", know_for: "Iron Man", gender: "Male", age: 60})
# actor = Actor.new({ first_name: "Bill", last_name: "Murray", know_for: "Stripes", gender: "Male", age: 70})
# actor.save

User.create!(name: "Joe Blow", email: "jb@example.com", password_digest: "$2a$12$S4d8IjqBJpUUcP4J/7eQTutqkP9srAGiX.d8dehGUtDSB8/z1VUwm", admin: false)

mymovie = Movie.create({title: "Coming to America", year: 1988, plot: "Pampered Prince goes to NY to find love" })
mymovie = Movie.create({title: "Big", year: 1986, plot: "40 year old man suddenly turns 12 years old" })
mymovie = Movie.create({title: "Step Brothers", year: 2002, plot: "40 year old losers become step brothers" })
mymovie.save
