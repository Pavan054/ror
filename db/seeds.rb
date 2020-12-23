# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Participant.create(
    name: 'Pavan', age: 54, gender: 'male', email: 'pavan@gmail.com'
)

Clinic.create(
    name: 'one_lab', location: 'pune'
)