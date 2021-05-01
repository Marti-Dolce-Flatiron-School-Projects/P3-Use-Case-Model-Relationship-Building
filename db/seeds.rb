# frozen_string_literal: true

require 'faker'

User.destroy_all

puts "Starting Seed Data......"

puts "Create a main sample user."
puts '.......'
User.create!(fname: 'Eddie',
             lname: 'Opara',
             # username: 'eopara',
             email: 'eopara@gmail.com',
             password: 'password',
             password_confirmation: "password"
)

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
               password: 'password',
               password_confirmation: "password"
  )
end


# Generate microposts for a subset of users.
users = User.order(:created_at).take(6)
10.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.microposts.create!(content: content) }
end

# Create following relationships.
users = User.all
user = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

# # Create listings seeds with user relationship.
puts "Starting Seed Data......"

print("Seeding ... HOA's Table....")

num = 0
10.times do
  percent = num / 30 * 100
  # sleep(0.05)
  print 'Seeding complete in'
  print "...#{percent += 1} \r"
  i = num += 1
  Hoa.create([
                 'contact' => Faker::Name.first_name + " " +  Faker::Name.last_name,
                 'phone' => Faker::PhoneNumber.cell_phone,
                 'email' => Faker::Internet.email,
                 'community' => Faker::Address.community,
                 'address' => Faker::Address.street_address,
                 'city' => Faker::Address.city,
                 'state'=> Faker::Address.state,
                 'zipcode' => Faker::Address.zip,
                 'website' => Faker::Internet.url,
                 'user_id' => User.ids.sample

             ])

  num += 1

  system('clear')
end