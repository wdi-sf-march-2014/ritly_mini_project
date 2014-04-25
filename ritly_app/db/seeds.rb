# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
urls = Url.create([
	{link: "Google", random_string: "Google.org"},
	{link: "Yahoo", random_string: "Yahoo.me"},
	{link: "Bing", random_string: "Bing.you"}
	])