# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shelter.create(name:"Northshore Animal League",zip:"11201",image_url:"https://www.animalleague.org/wp-content/uploads/2017/03/new-york-services-share-animal-care-05042017.jpg",description:"Largest No-Kill Shelter in the U.S.")
Shelter.create(name:"Happy Hollow Kitten Rescue",zip:"11201",image_url:"https://www.ci.desoto.tx.us/ImageRepository/Document?documentID=8678",description:"We Love Cats!")
Shelter.create(name:"Rescue Brooklyn",zip:"11201",image_url:"https://m.media-amazon.com/images/M/MV5BMzUwNWIyZTEtN2Q0Ni00YmYzLWFhYTctN2Q4M2E3Yzg5NGUyXkEyXkFqcGdeQXVyMjExMjI5NzI@._V1_.jpg",description:"Come find your new best friend!")
Shelter.create(name:"Eden Animal Haven",zip:"11201",image_url:"https://s3.amazonaws.com/petfinder-us-east-1-petimages-prod/organization-photos/42099/42099-1.jpg?bust=2017-08-14+20%3A21%3A39",description:"A safe haven for cats in need.")
Shelter.create(name:"New Haven Animal Shelter",zip:"11201",image_url:"https://s3.amazonaws.com/petfinder-us-east-1-petimages-prod/organization-photos/28630/28630-1.jpg?bust=2017-12-10+00%3A24%3A38",description:"Find a friend for life!")
Shelter.create(name:"Crossed Paws Animal Haven",zip:"11201",image_url:"http://nebula.wsimg.com/01ed92102a628cceccb018665123148a?AccessKeyId=7B4B64B2F6AC801855B1&disposition=0&alloworigin=1",description:"Rise Rescue Rehome Repeat")
Shelter.create(name:"Northeast Animal Shelter",zip:"11205",image_url:"https://www.northeastanimalshelter.org/wp-content/uploads/2013/10/1-IMG_8364-0011.jpg",description:"Kittens!")
Shelter.create(name:"Liberty Humane Society",zip:"11208",image_url:"https://patch.com/img/biz/sites/default/files/logo%20(4).jpg",description:"Transformation Through Training")



Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"A slightly nervous but very good kitty.",image_url:'https://i.redd.it/nku6ymc3irk31.jpg')
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"Very picky about kibble.",image_url:'https://i.redd.it/mkcf1t1aqzm21.jpg')
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"Extraordinarily loud purr.",image_url:'https://i.redd.it/sqr2bzhyai731.jpg')
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"Dedicated biscuit maker.",image_url:'https://i.redd.it/6298aejoc7l21.jpg')
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"Enemy of all mice.",image_url:'https://i.redd.it/22rbyswfq2t31.jpg')
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"Loves to chatter at birds.",image_url:'https://i.redd.it/nn6raxriilw11.jpg')
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"Sleeps 20 hours a day.",image_url:'https://i.redd.it/oo1zhjplst131.jpg')
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"Really cute meow.",image_url:'https://i.redd.it/9ekkqmqfetb31.jpg')
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"Likes to climb.",image_url:'https://i.redd.it/lfgtd95rc5s31.jpg')
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"Very friendly!",image_url:'https://i.redd.it/oilf4xdn9jn21.jpg')
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"Loud Talker.",image_url:'https://i.redd.it/hitl08d2let11.jpg')
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"Loves catnip.",image_url:'https://i.redd.it/azwsx4uowjo21.jpg')
Pet.create(name:Faker::Name.first_name(),shelter_id:Shelter.all.sample.id,description:"Does not like the shelter, wants to be on your couch.",image_url:'https://i.redd.it/tqkprpmpi4v11.jpg')

puts "seeded succesfully!..."