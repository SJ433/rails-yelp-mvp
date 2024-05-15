# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '666', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '555', category: 'italian' }
panarotti = { name: 'Panarotti', address: '81 Buckingham Gate, Westminster, London SW1E 6PE', phone_number: '777', category: 'japanese' }
mcdonald = { name: 'Mcdonald', address: '11 Devonshire Pl, Marylebone, London W1G 6HT', phone_number: '999', category: 'french' }
comlone = { name: 'Comlone', address: '15 Pall Mall, St. James, London SW1Y 5LU', phone_number: '444', category: 'belgian' }

[dishoom, pizza_east, panarotti, mcdonald, comlone].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
