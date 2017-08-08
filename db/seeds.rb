# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

# 10.times do
#     User.create!(
#         email: Faker::Internet.email,
#         password: Faker::Internet.password(6),
#         username: Faker::Internet.user_name(8..12)
#     )
# end
    
10.times do
    Blog.create!(
        title: Faker::RickAndMorty.quote,
        body: Faker::Hipster.paragraph(2)
    )
end

puts "#{User.count} users created"
puts "#{Blog.count} posts created"