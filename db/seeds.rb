# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create!(username: "Alice", email: 'alice@alice.com', :password => 'topsecret', :password_confirmation => 'topsecret')
user2 = User.create!(username: "Bob", email: 'bob@bob.com', :password => 'topsecret', :password_confirmation => 'topsecret')
user1.products.create(name: "AAA", prise: "1")
user2.products.create(name: "BBB", prise: "1")
user1.products.create(name: "CCC", prise: "1")
user1.products.create(name: "DDD", prise: "1")
user2.products.create(name: "EEE", prise: "1")


	