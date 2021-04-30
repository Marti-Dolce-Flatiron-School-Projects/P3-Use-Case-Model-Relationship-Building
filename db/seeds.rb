# frozen_string_literal: true

require 'faker'

puts "Starting Seed Data......"

puts "Create a main sample user."
puts '.......'
User.create!(fname: 'Eddie',
             lname: 'Opara',
             # username: 'eopara',
             email: 'eopara@gmail.com',
             password_digest: 'password')

puts '.......'
puts "Generating more users ......"

# Generate a bunch of additional users.

9.times do |n|
  fname = Faker::Name.first_name
  lname = Faker::Name.last_name
  email = "example-#{n + 1}@twenty9signals.com"
  password = "password"

  User.create!(fname: fname,
               lname: lname,
               email: email,
               password: password)
end

system('clear')

puts ".......Seeding Table Complete"

puts '.......'
