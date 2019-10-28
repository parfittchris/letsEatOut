# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

titles = ['Went here last night!' 'Wow!', 'So good!', "I'd come back", 'Let me tell you...', 'Great spot!', 'Just around the corner', 'Get ready for this', "You don't know what you're missing", "It was ok", "Better than my mom's!", "My mom's is better..."];

User.destroy_all
Restaurant.destroy_all
Review.destroy_all
Follower.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('users');
ActiveRecord::Base.connection.reset_pk_sequence!('restaurants');
ActiveRecord::Base.connection.reset_pk_sequence!('reviews');
ActiveRecord::Base.connection.reset_pk_sequence!('followers');


u1 = User.create!(username: 'demoUser', email: 'demoUser@gmail.com', password: 'password')
u2 = User.create!(username: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: 'password')
u3 = User.create!(username: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: 'password')
u4 = User.create!(username: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: 'password')
u5 = User.create!(username: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: 'password')
u6 = User.create!(username: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: 'password')
u7 = User.create!(username: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: 'password')
u8 = User.create!(username: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: 'password')
u9 = User.create!(username: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: 'password')
u10 = User.create!(username: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: 'password')

r1 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r2 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r3 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r4 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r5 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r6 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r7 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r8 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r9 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r10 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r11 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r12 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r13 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r14 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.unique.description, rating: rand(1..5))
r15 = Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, description: Faker::Restaurant.description, rating: rand(1..5))

rev1 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev2 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev3 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev4 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev5 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev6 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev7 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev8 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev9 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev10 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev11 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev12 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev13 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev14 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev15 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev16 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev17 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev18 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev19 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev20 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev21 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev22 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev23 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev24 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev25 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev26 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev27 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev28 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev29 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])
rev30 = Review.create!(author_id: rand(1..10), restaurant_id: rand(1..15), content: Faker::Restaurant.review, rating: rand(1..5), title: titles[rand(0..titles.length-1)])


# f1 = Follower.create!(user_id: 10, follow_id: 9);

f1 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f2 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f3 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f4 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f5 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f6 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f7 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f8 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f9 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f10 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f11 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f12 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f13 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f14 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f15 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f16 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f17 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f18 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f19 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f20 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f21 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f22 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f23 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f24 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f25 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f26 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f27 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f28 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f29 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));
f30 = Follower.create!(user_id: rand(1..10), follow_id: rand(1..10));


