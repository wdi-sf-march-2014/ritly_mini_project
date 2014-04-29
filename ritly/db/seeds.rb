# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


urls = Url.create([
	{original_link: "https://www.google.com/", ritly_link: "goog", views_count: 0 },
	{original_link: "http://www.codecademy.com/dashboard", ritly_link: "codeac", views_count: 0 },
	{original_link: "https://www.facebook.com/", ritly_link: "fb", views_count: 0 },
	{original_link: "https://twitter.com/", ritly_link: "tw", views_count: 0 }
	])
