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
class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
end


class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :must_have_apparel

  private

  def must_have_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "Store must carry at least one of men's or women's apparel")
    end
  end
end


puts "Enter a store name:"
store_name = gets.chomp

# Attempt to create a store with the inputted name and missing fields
new_store = Store.new(name: store_name)

if new_store.save
  puts "Store created successfully!"
else
  puts "Errors:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
end
