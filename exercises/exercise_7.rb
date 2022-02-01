require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "What is your store name?"
input_store_name = $stdin.gets.chomp

store = Store.create(
  name: "Gassss",
  mens_apparel: false,
  womens_apparel: false
)

if store.errors.any? # If there are errors, do something
  store.errors.each do |attribute, message|
    p "#{attribute} #{message}"
  end
end

# same as Store.create
# store = Store.new
# store.name = input_store_name
# store.mens_apparel = false
# store.womens_apparel = false
# store.save


# validation test code
# @store1.employees.create(first_name: "hello", last_name: "Virani", hourly_rate: 10)

# employee = Employee.create(
#   first_name: "hello", last_name: "Virani", hourly_rate: 50
# )

# store = Store.create(
#   name: "Gassss",
#   annual_revenue: 20,
#   mens_apparel: false,
#   womens_apparel: false
# )