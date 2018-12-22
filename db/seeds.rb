# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "cleaning"

Order.destroy_all
Event.destroy_all
Teacher.destroy_all


puts "creating"


amelie = Teacher.create!(name: "Amélie", description: "Fitness coach", id: 3)
josy = Teacher.create!(name: "Josy", description: "Boxing coach", id: 4)

event1 = Event.create!(title: "FirstOne", description: "Go get fit !", address: "Paris XX", user_id: 1, capacity: 30, price_cents: 1000, sku: "hello", starting_time: "18:00:00", date: "2018-12-22", teacher_id: 3)
event2 = Event.create!(title: "SecondOne", description: "Go get fit !", address: "Paris XI", user_id: 1, capacity: 40, price_cents: 1000, sku: "hello1", starting_time: "18:15:00", date: "2018-12-23", teacher_id: 4)
event3 = Event.create!(title: "ThirdOne", description: "Go get fit !", address: "Paris X", user_id: 1, capacity: 30, price_cents: 1000, sku: "hello2", starting_time: "19:00:00", date: "2018-12-22", teacher_id: 3)
event4 = Event.create!(title: "FourthOne", description: "Go get fit !", address: "Paris IX", user_id: 1, capacity: 20, price_cents: 1000, sku: "hello3", starting_time: "19:30:00", date: "2018-12-23", teacher_id: 4)
