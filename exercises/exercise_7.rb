require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

print "----------> Enter store name (try one character): "
store_name = gets.chomp
new_store = Store.create(name: store_name)
puts "----------> Error message: ", new_store.errors.full_messages

new_employee = @store1.employees.create(first_name: "Calvin")
puts "----------> Error details: ", new_employee.errors.details

Toronto_store = Store.create(name: "Toronto", annual_revenue: 430000, mens_apparel: false, womens_apparel: false)
puts "----------> Error message: ", Toronto_store.errors.full_messages
