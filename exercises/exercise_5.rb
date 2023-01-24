require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "Total revenue across all stores is $#{Store.sum(:annual_revenue).to_i}"
puts "Total average revenue of all stores is $#{Store.average(:annual_revenue).to_i}"
puts "Number of stores generating $1M or more in annual sales: #{Store.where('annual_revenue > ?', 1000000).count(:all)}"