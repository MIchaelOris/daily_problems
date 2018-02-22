# db/seeds.rb
Task.create(
  text: "Take out the garbage")
Task.create(text: "Make the bed")
Task.create(text: "Mow the lawn")
Task.create(text: "Buy groceries")
Task.create(text: "Feed the cat")
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
