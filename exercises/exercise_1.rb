require_relative '../setup'

puts "Exercise 1"
puts "----------"

# create active record models -> model singular
# (or and add this to the store.rb under the models folder)
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store #singular
end

store = Store.create(
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)

store = Store.create(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)

store = Store.create(
  name: "Gastown",
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)

puts "total stores are #{Store.count(:all)}"