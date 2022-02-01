require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store4 = Store.find_by(id: 4)
@store5 = Store.find_by(id: 5)
@store6 = Store.find_by(id: 6)


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Ansie", last_name: "Lio", hourly_rate: 60)
@store2.employees.create(first_name: "Ken", last_name: "Khan", hourly_rate: 60)
@store2.employees.create(first_name: "Susan", last_name: "Hulio", hourly_rate: 60)
@store4.employees.create(first_name: "Jenny", last_name: "Lui", hourly_rate: 60)
@store4.employees.create(first_name: "Alice", last_name: "Lee", hourly_rate: 60)
@store4.employees.create(first_name: "Karmen", last_name: "Virani", hourly_rate: 60)
@store5.employees.create(first_name: "Jennice", last_name: "White", hourly_rate: 60)
@store5.employees.create(first_name: "Alio", last_name: "Lei", hourly_rate: 60)
@store5.employees.create(first_name: "Bruno", last_name: "Bhan", hourly_rate: 60)
@store6.employees.create(first_name: "Brown", last_name: "Vincent", hourly_rate: 60)
@store6.employees.create(first_name: "Ali", last_name: "Pop", hourly_rate: 60)