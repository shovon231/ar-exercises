require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue for the Entire Company: $#{total_revenue}"

average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue for All Stores: $#{average_revenue}"

stores_with_revenue_over_1m = Store.where('annual_revenue >= ?', 1_000_000).count
puts "Number of Stores Generating $1M or More in Annual Sales: #{stores_with_revenue_over_1m}"
