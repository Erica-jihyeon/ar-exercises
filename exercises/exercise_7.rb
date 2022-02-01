require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "hello", last_name: "Virani", hourly_rate: 10)

# employee = Employee.create(
#   first_name: "hello", last_name: "Virani", hourly_rate: 50
# )

store = Store.create(
  name: "Gassss",
  annual_revenue: 20,
  mens_apparel: false,
  womens_apparel: false
)