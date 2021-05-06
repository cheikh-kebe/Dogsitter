require 'faker'

Dogsit.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all

10.times do 
  dogsit = Dogsit.create!(first_name: Faker:: Name.first_name, last_name: Faker:: Name.last_name, city_name_id: Faker::Number.within(range: 1..10))
end

11.times do 
  dog = Dog.create!(name: Faker::Games::Pokemon.name, race: Faker::Creature::Dog.breed, city_name_id: Faker::Number.within(range: 1..10))
end

11. times do
  stroll = Stroll.create!(date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), dogsit_id: Faker::Number.within(range: 1..11), dog_id: Faker::Number.within(range: 1..10))
end

11.times do 
city = City.create!(city_name: Faker::Address.city, dogsit_id: Faker::Number.within(range: 1..11), dog_id: Faker::Number.within(range: 1..10))
end

