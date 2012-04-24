# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  { name: "Ricardo Kiyoshi Sasaki", email: "ricardo.k.sasaki@gmail.com", password: "adminadmin" },
  { name: "Joe Liyuji Sumiya", email: "pdmjoe@gmail.com", password: "adminadmin"},
  { name: " Vitor Vergacas de Oliveira", email: "vitor.vergacas@gmail.com", password: "adminadmin"}
])

stock = Stock.create([{name: "Default"}])