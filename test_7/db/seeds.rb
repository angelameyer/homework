# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!([
  {
    name: "Angela M",
    password: "toaster",
    password_confirmation: "toaster",
    email: "angela@zaarly.com"
  },
  {
    name: "Mookie 2",
    password: "meowmix",
    password_confirmation: "meowmix",
    email: "mookie@zaarly.com"
  }])