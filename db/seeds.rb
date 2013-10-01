# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

People.create(name: "Seth Goings", address: "7816 Marshall St", city: 'Arvada', state: 'CO', attend: true)
People.create(name: "Mollie Goings", address: "Some address", city: 'Broomfield', state: 'CO', attend: true)
People.create(name: "Brittany Waack", address: "Some other address", city: 'Fort Collins', state: 'CO', attend: false)
