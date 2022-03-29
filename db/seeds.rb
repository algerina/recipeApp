# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
recipe1 = Recipe.create(name: "Tuna salad", preparation_time: 13, cooking_time: 0, description: 'Put all the ingredients together', public: true )
