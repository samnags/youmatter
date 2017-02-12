# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Accomplishment.new(name: "Attended workshop")
b = Accomplishment.create(name: "Registered to vote")
c = Accomplishment.create(name: "Added Elected Officials")
