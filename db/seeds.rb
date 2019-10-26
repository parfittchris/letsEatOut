# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

titles = ['Went here last night!' 'Wow!', 'So good!', "I'd come back", 'Let me tell you...', 'Great spot!', 'Just around the corner', 'Get ready for this'];

User.destroy_all
Restaurant.destroy_all
Review.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('users');
ActiveRecord::Base.connection.reset_pk_sequence!('restaurants');
ActiveRecord::Base.connection.reset_pk_sequence!('reviews');

u1 = User.create!(username: 'demoUser', email: 'demoUser@gmail.com', password: 'password')
u2 = User.create!(username: 'extrachrisp', email: 'extrachrisp@gmail.com', password: 'password')
u3 = User.create!(username: 'pinkbunny', email: 'pinkbunny@yahoo.com', password: 'password')

r1 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(0..5))
r2 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(0..5))
r3 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(0..5))
r4 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(0..5))
r5 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(0..5))
r6 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(0..5))
r7 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(0..5))
r8 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(0..5))
r9 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(0..5))
r10 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(0..5))




rev1 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev2 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev3 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev4 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev5 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev6 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev7 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev8 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev9 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev10 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev11 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev12 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev13 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev14 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev15 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev16 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev17 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev18 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev19 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
rev20 = Review.create!(author_id: rand(1..3), restaurant_id: rand(1..10), content: Faker::Restaurant.review, rating: rand(0..5), title: titles[rand(0..titles.length-1)])
