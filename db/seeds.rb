# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


italian = Cuisine.create(name: "Italian")
mexican = Cuisine.create(name: "Mexican")
thai = Cuisine.create(name: "Thai")

Recipe.creat(title: "PASTA WITH PEAS", description: "This Italian pasta with peas is a simple, creamy, and delicious one-pot dinner recipe that uses minimal ingredients.", image_url: "https://theclevermeal.com/wp-content/uploads/2020/03/pasta-with-peas-4-copy-1-798x1024.jpg", category_id: italian.id)