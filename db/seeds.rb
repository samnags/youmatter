# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Accomplishment.create(name: "Attended workshop")
b = Accomplishment.create(name: "Registered to vote")
c = Accomplishment.create(name: "Added Elected Officials")

# sen = Elected.create({category: "US Senator", level: "Federal"})
# rep = Elected.create({category: "US Representative", level: "Federal"})
# ass = Elected.create({category: "Assemblymember", level: "State"})
# ss = Elected.create({category: "State Senator", level: "State"})
# cc = Elected.create({category: "City Councilmember", level: "City"})
# sc = Elected.create({category: "State Councilmember", level: "State"})
# gov = Elected.create({category: "Governor", level: "State"})
