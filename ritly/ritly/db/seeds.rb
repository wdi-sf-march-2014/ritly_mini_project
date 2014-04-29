# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

links = Url.create([
     {link: 'http://www.google.com', random_string: "abcdefg"},
     {link: 'http://www.cnn.com', random_string: "hijklmnop"}

	])
