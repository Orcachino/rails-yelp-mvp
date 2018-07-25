# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.delete_all
puts "Deleted Restaurants"

20.times do
  Restaurant.create(name: Faker::Restaurant.name,
                    address: Faker::Address.street_address,
                    phone_number: Faker::PhoneNumber.phone_number,
                    category: Faker::Restaurant.type,
                    rating: [1, 2, 3,4 ,5].sample)

end

puts "Created #{Restaurant.count} restaurants"
