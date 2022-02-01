require_relative '../setup'

puts "Exercise 1"
puts "----------"

# create active record models -> model singular
# (or and add this to the store.rb under the models folder)
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0}
  validate :apparel_validate

  def apparel_validate
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "Apparel can't be both false")
      errors.add(:womens_apparel, "Apparel can't be both false")
    elsif mens_apparel == nil || womens_apparel == nil
      if mens_apparel == nil
        errors.add(:mens_apparel, "can't be blank")
      elsif womens_apparel == nil
        errors.add(:womens_apparel, "can't be blank")
      end
    end
  end
  
end

class Employee < ActiveRecord::Base
  belongs_to :store #singular
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: 40...200}, numericality: { only_integer: true }
  validates :store_id, presence: true
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