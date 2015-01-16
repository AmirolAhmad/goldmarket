# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Package.find_or_create_by(
	name: "ETA7",
	price: "12,650",
	landing_date: "02/01/2015"
)

Package.find_or_create_by(
	name: "ETA14",
	price: "11,800",
	landing_date: "09/01/2015"
)

Package.find_or_create_by(
	name: "ETA21",
	price: "11,200",
	landing_date: "16/01/2015"
)

Package.find_or_create_by(
	name: "ETA30",
	price: "10,200",
	landing_date: "26/01/2015"
)