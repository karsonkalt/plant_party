# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# plant = Plant.new(nickname: "ZZ", species: 223713, days_to_be_watered: 10)
# plant.save

# user = User.new(username: "karsonk", email: "karson@email.com")
# user.save

user_plant = UserPlant.new(user_id: 1, plant_id: 1)
user_plant.save