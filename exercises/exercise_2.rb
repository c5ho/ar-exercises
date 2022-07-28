require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)
@store6 = Store.find_by(id: 6)

@store1.update(name: "Squamish")

# puts @store1
p @store6
