# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

puts 'Cleaning database...'
Review.destroy_all
Restaurant.destroy_all

puts 'Creating restaurants...'

dishoom = Restaurant.create!(
  name: 'Dishoom',
  address: '7 Boundary St, London E2 7JE',
  phone_number: '020 7420 9320',
  category: 'chinese'
)

pizza_east = Restaurant.create!(
  name: 'Pizza East',
  address: '56A Shoreditch High St, London E1 6PQ',
  phone_number: '020 7729 1888',
  category: 'italian'
)

sushi_samba = Restaurant.create!(
  name: 'Sushi Samba',
  address: '110 Bishopsgate, London EC2N 4AY',
  phone_number: '020 3640 7330',
  category: 'japanese'
)

le_relais = Restaurant.create!(
  name: "Le Relais de l'Entrecôte",
  address: '15 Rue Marbeuf, 75008 Paris',
  phone_number: '01 49 52 07 17',
  category: 'french'
)

chez_leon = Restaurant.create!(
  name: 'Chez Léon',
  address: 'Rue des Bouchers 18, 1000 Bruxelles',
  phone_number: '+32 2 511 14 15',
  category: 'belgian'
)

din_tai_fung = Restaurant.create!(
  name: 'Din Tai Fung',
  address: '194 Shaftesbury Ave, London WC2H 8JL',
  phone_number: '020 7240 2888',
  category: 'chinese'
)

puts 'Creating reviews...'

dishoom.reviews.create!(content: 'Amazing food and atmosphere!', rating: 5)
dishoom.reviews.create!(content: 'A bit pricey but worth it', rating: 4)

pizza_east.reviews.create!(content: 'Best pizza in London', rating: 5)
pizza_east.reviews.create!(content: 'Good but nothing special', rating: 3)

sushi_samba.reviews.create!(content: 'Incredible views and sushi', rating: 5)

le_relais.reviews.create!(content: 'Classic French bistro', rating: 4)
le_relais.reviews.create!(content: 'The steak is perfect!', rating: 5)

chez_leon.reviews.create!(content: 'Best moules-frites ever', rating: 5)

din_tai_fung.reviews.create!(content: 'Dumplings are to die for', rating: 5)
din_tai_fung.reviews.create!(content: 'Long wait but worth it', rating: 4)

puts "Finished! Created #{Restaurant.count} restaurants and #{Review.count} reviews."
