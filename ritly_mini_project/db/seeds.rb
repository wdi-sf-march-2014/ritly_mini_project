# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

urls = Url.create([
  {link: "http://www.flickr.com", random_string: "needinspiration"}, 
  {link: "http://www.google.com", random_string: "searchmonster"},
  {link: "http://www.facebook.com", random_string: "feelingsocial"},
  {link: "http://www.reddit.com", random_string: "feelingbored"},
  {link: "http://icanhas.cheezburger.com/", random_string: "kittylove"},
  {link: "http://www.github.com", random_string: "gitinit"},
  {link: "http://www.yelp.com", random_string: "feelinghungry"}
  ])
