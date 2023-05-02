require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for all stores: $#{total_revenue}"

avg_revenue = Store.average(:annual_revenue)
puts "Average annual revenue for all stores: $#{avg_revenue}"

high_revenue_stores = Store.where("annual_revenue >= ?", 1000000).size
puts "Number of stores generating $1M or more in annual sales: #{high_revenue_stores}"
