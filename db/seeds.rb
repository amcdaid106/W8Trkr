# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Entry.destroy_all

Entry.create(date: DateTime.new(2016,9,22,1,2,3), weight: 131.2)

Entry.create(date: DateTime.new(2016,9,23,1,2,3), weight: 131.0)

Entry.create(date: DateTime.new(2016,9,24,1,2,3), weight: 130.6)

Entry.create(date: DateTime.new(2016,9,25,1,2,3), weight: 131.2)

Entry.create(date: DateTime.new(2016,9,26,1,2,3), weight: 130.2)
