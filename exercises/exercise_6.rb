require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Calvin", last_name: "Ho", hourly_rate: 100)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 50)
@store2.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 60)
@store2.employees.create(first_name: "Sally", last_name: "Lo", hourly_rate: 100)
@store2.employees.create(first_name: "Bob", last_name: "Poe", hourly_rate: 50)
