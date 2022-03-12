# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cookie = Cookie.new({name: "Monster", calories: 450, size: "L"})
cookie.save

cookie = Cookie.new({name: "Chocolate Chip", calories: 400, size: "M"})
cookie.save
cookie = Cookie.new({name: "Oatmeal", calories: 350, size: "L"})
cookie.save
cookie = Cookie.new({name: "Sugar", calories: 550, size: "S"})
cookie.save
