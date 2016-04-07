# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Logo.create!(
  :team => "New York Knicks",
  :conference => "East",
  :url => "http://content.sportslogos.net/logos/6/216/full/7095_new_york_knicks-primary-1981.png"
)

Logo.create!(
  :team => "Chicago Bulls",
  :conference => "East",
  :url => "http://content.sportslogos.net/logos/6/221/full/hj3gmh82w9hffmeh3fjm5h874.png"
)

Logo.create!(
  :team => "Raptors",
  :conference => "East",
  :url => "http://content.sportslogos.net/logos/6/227/full/kqmesaae0efg3atwugmeohxga.png"
)
