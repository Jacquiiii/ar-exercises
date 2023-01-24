require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jacqui", last_name: "Koroll", hourly_rate: 100)
@store1.employees.create(first_name: "Callie", last_name: "Time", hourly_rate: 55)
@store2.employees.create(first_name: "Jeremy", last_name: "Ruffalo", hourly_rate: 101)
@store2.employees.create(first_name: "Maria", last_name: "Smith", hourly_rate: 55)
@store2.employees.create(first_name: "Icabob", last_name: "Crane", hourly_rate: 25)

puts "There are #{@store1.employees.count(:all)} employees in the database"
puts "There are #{@store2.employees.count(:all)} employees in the database"
