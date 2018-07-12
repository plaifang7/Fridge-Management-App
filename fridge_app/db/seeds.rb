# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Fridge.destroy_all

lg = Fridge.create(brand: 'LG', location: 'lower level kitchen', size: 10)

lg.foods.create(name: 'Boca Burger', weight: 1, vegan: true)
lg.drinks.create(name: 'Simply Lemonade', size: 24, alcoholic: false)