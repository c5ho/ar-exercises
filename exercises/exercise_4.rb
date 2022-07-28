require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Surrey_store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Whistler_store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Yaletown_store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_store = Store.where("mens_apparel = ?", true).each { |store| 
  puts "Store Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
}

# can also do: Store.where(mens_apparel: true)

@womens_store = Store.where("womens_apparel = ? AND annual_revenue < 1000000", true).each { |store| 
  puts "Store Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
}

# can also do: Store.where(womens_apparel: true, annual_revenue: ..1000000)


@store6 = Store.find_by(id: 6)
