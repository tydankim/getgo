# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding Data ...'

puts 'Re-creating Users ...'

# User.destroy_all

user1 = User.create!(first_name: 'Amy', last_name: 'A', email: 'amy@example.com', password: '1', password_confirmation: '1')
user2 = User.create!(first_name: 'Bob', last_name: 'B', email: 'bob@example.com', password: '1', password_confirmation: '1')

puts 'Re-creating Preferences ...'

Preference.destroy_all

Preference.create!(user_id: user1.id, route: 'route_a', from_stop: 'fstop_a', to_stop: 'tstop_a')
puts 'DONE!'
