# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cuisine.destroy_all
Recipe.destroy_all

italian = Cuisine.create(name: "Italian")
mexican = Cuisine.create(name: "Mexican")
thai = Cuisine.create(name: "Thai")
general = Cuisine.create(name: "General")

Api.new.get_recipes



Recipe.create(title: "PAD THAI", description: "This restaurant-quality Pad Thai recipe is surprisingly easy to make at home and customize with whatever noodles, proteins, veggies, and spice level you prefer. ", image_url: "https://www.gimmesomeoven.com/wp-content/uploads/2019/01/Pad-Thai-Recipe-1.jpg", cuisine_id: thai.id)
Recipe.create(title: "SPICY MEXICAN RICE", description: "This vegan rice dish can be eaten on its own or, if you want to add some protein, it’s good with beans, crumbled feta, cooked chicken or prawns stirred through. Ready in 30 minutes, it's a great dinner to have up your sleeve, midweek.", image_url: "https://images.immediate.co.uk/production/volatile/sites/2/2020/06/Steven-Joyce-JOS2020026D00012-FS_preview-7786183.jpg?webp=true&quality=90&resize=620%2C413", cuisine_id: mexican.id)
Recipe.create(title: "PASTA WITH PEAS", description: "This Italian pasta with peas is a simple, creamy, and delicious one-pot dinner recipe that uses minimal ingredients.", image_url: "https://theclevermeal.com/wp-content/uploads/2020/03/pasta-with-peas-4-copy-1-798x1024.jpg", cuisine_id: italian.id)
Recipe.create(title: "SPHAGETTI", description: "Juicy seasoned beef and pork meatballs in an easy homemade tomato sauce.", image_url: "https://www.spendwithpennies.com/wp-content/uploads/2019/03/Spaghetti-and-Meatballs-SpendWithPennies-4.jpg", cuisine_id: italian.id)
Recipe.create(title: "THAI MILK TEA", description: "Similar to hot Thai tea, real Thai iced tea is a mix of black tea, spices, sugar, sweetened condensed milk, and evaporated milk.", image_url: "https://nitrocdn.com/qQMlXstDwcbLbpIQqybyApGNsyawllPe/assets/static/source/rev-c2ee214/recipe/images/thai-iced-tea-recipe-2.jpg", cuisine_id: thai.id)
Recipe.create(title: "CRUNCHY THAI SALAD WITH PEANUT DRESSING", description: "Irresistibly crunchy Thai salad with creamy peanut dressing will be your new vegetable obsession! Each bite packs a powerhouse of fresh superfoods.", image_url: "https://www.jessicagavin.com/wp-content/uploads/2016/07/crunchy-thai-salad-with-peanut-sauce-600x900.jpg", cuisine_id: thai.id)
Recipe.create(title:"BAKED RAVIOLI", description: "This Baked Ravioli recipe takes frozen ravioli and combines it with a homemade pasta sauce and lots of cheese. It’s super easy and super filling!", image_url:"https://www.tasteandtellblog.com/wp-content/uploads/2019/11/Baked-Ravioli-tasteandtellblog.com-1-768x512.jpg", cuisine_id: italian.id)
Recipe.create(title:"Ceviche", description: "Ceviche, also cebiche, seviche, or sebiche is a South American seafood dish that originated in Peru, typically made from fresh raw fish cured in fresh citrus juices, most commonly lemon or lime, and spiced with ají, chili peppers or other seasonings, including chopped onions, salt, and coriander.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Cebiche_de_corvina.JPG/1200px-Cebiche_de_corvina.JPG", cuisine_id: mexican.id)
