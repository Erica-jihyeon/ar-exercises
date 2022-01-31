require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Stores.find_by(id: 3)
Stores.destroy(@store3)

puts "total stores are #{Stores.count(:all)}"