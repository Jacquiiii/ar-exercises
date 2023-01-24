require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

store = Store.new do |s|
  s.name = "Surrey"
  s.annual_revenue = 224000
  s.mens_apparel = false
  s.womens_apparel = true
  s.save
end

store = Store.new do |s|
  s.name = "Whistler"
  s.annual_revenue = 1900000
  s.mens_apparel = true
  s.womens_apparel = false
  s.save
end


store = Store.new do |s|
  s.name = "Yaletown"
  s.annual_revenue = 430000
  s.mens_apparel = true
  s.womens_apparel = true
  s.save
end

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |s|
  puts "Store Name: #{s["name"]}, Annual Revenue: #{s["annual_revenue"]}"
end

@womens_stores = Store.where('annual_revenue < ?', 1000000).where(womens_apparel: true)

@womens_stores.each do |s|
  puts "Store Name: #{s["name"]}, Annual Revenue: #{s["annual_revenue"]}"
end