# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
Adopter.create(name:Faker::Name.name,description:Faker::Lorem.sentence,zip:Faker::Address.zip(),image_url:'https://res.cloudinary.com/twenty20/private_images/t_watermark-criss-cross-10/v1535998235000/photosp/93ec6079-d7b3-4b83-965d-d5466742a8bc/stock-photo-pink-people-black-cat-kitten-smiling-pet-smile-feline-93ec6079-d7b3-4b83-965d-d5466742a8bc.jpg',password:Faker::Lorem.characters(number:7))
end

5.times do
Shelter.create(name:Faker::Company.name,zip:Faker::Address.zip,image_url:"https://www.ci.desoto.tx.us/ImageRepository/Document?documentID=8678",description:Faker::Lorem.sentence)
end

# Shelter.create(name:"Happy Hollow Kitten Rescue", zip:"11201", image_url:"https://www.ci.desoto.tx.us/ImageRepository/Document?documentID=8678", description:"Wow we sure do love kittens!")

5.times do
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:Faker::Lorem.sentence,image_url:'https://placekitten.com/200/286',adoption_status:[true, false].sample)
end
# Pet.create(name:"Tiger", shelter_id:1, description: "Wow what a lovely kitten", image_url:'https://placekitten.com/200/286', adoption_status:[true, false].sample)

5.times do
Favorite.create(pet_id:Pet.all.sample.id, adopter_id:Adopter.all.sample.id)
end

5.times do
Adoption.create(pet_id:Pet.all.sample.id, adopter_id:Adopter.all.sample.id)
end

puts "seeded succesfully!..."