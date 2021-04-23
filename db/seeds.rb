# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# frozen_string_literal: true

# ##  TODO: make a counter method for seeds
require 'faker'

print 'Seeding Users Table.'
puts '.......'
puts '.......'

User.create([
              {
                fname: 'Neeson',
                lname: 'Grant',
                username: 'ngrant',
                email: 'new@email.com',
                password_digest: '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq',
                # 'listing_id' => Listing.ids.sample,
                created_at: '2012-04-14 02:09:44.528632',
                updated_at: '2018-04-19 16:22:55.254084'
              },
              {
                fname: 'Salma',
                lname: 'Tine',
                username: 'stine',
                email: 'salma@hotmail.com',
                password_digest: '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq',
                # 'listing_id' => Listing.ids.sample,
                created_at: '2021-04-14 02:17:30.310658',
                updated_at: '2021-04-14 04:18:30.310658'
              },
              {
                fname: 'Rend',
                lname: 'Miller',
                username: 'rmiller',
                email: 'hend@anything.com',
                password_digest: '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq',
                # 'listing_id' => Listing.ids.sample,
                created_at: '2010-04-16 13:44:09.971071',
                updated_at: '2018-04-16 23:44:09.971071'
              },
              {
                fname: 'Eddie',
                lname: 'Opara',
                username: 'eopara',
                email: 'eopara@gmail.com',
                password_digest: '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq',
                # 'listing_id' => Listing.ids.sample,
                created_at: '2021-02-22 18:42:08.345412',
                updated_at: '2021-04-22 20:42:08.345412'
              }
            ])

puts '.......'
puts '.......'

print 'Seeding User Table complete.'

puts '.......'
puts '.......'
