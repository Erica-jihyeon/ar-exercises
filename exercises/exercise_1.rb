require_relative '../setup'

puts "Exercise 1"
puts "----------"

# create active record models
# (or and add this to the store.rb under the models folder)
class Stores < ActiveRecord::Base
end

store = Stores.create(
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)

store = Stores.create(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)

store = Stores.create(
  name: "Gastown",
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)

puts "total stores are #{Stores.count(:all)}"