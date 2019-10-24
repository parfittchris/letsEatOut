# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Restaurant.destroy_all


ActiveRecord::Base.connection.reset_pk_sequence!('users');
ActiveRecord::Base.connection.reset_pk_sequence!('restaurants');


u1 = User.create!(username: 'testuser', email: 'testuser@gmail.com ', password: 'password')
u2 = User.create!(username: 'extrachrisp', email: 'extrachrisp@gmail.com ', password: 'password')
u3 = User.create!(username: 'pinkbunny', email: 'pinkbunny@yahoo.com ', password: 'password')

r1 = Restaurant.create!(name: "Stan's Cereal Shack", address: "123 Main Street", rating: 3)
r2 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, rating: rand(0..5))
r3 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, rating: rand(0..5))
r4 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, rating: rand(0..5))
r5 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, rating: rand(0..5))

