require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# store.rb
class Store < ActiveRecord::Base
  has_many :employees
end

# employee.rb
class Employee <  ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "Emily", last_name: "Johnson", hourly_rate: 55)

@store2.employees.create(first_name: "Wei", last_name: "Chen", hourly_rate: 45)
@store2.employees.create(first_name: "Yuki", last_name: "Nakamura", hourly_rate: 52)
