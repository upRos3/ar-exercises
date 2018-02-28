require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts 'Exercise 4'
puts '----------'

# Your code goes here ...

surrey = Store.new(name: 'Surrey',
                   annual_revenue: 224_000,
                   mens_apparel: false,
                   womens_apparel: true)

surrey.save

whistler = Store.new(name: 'Whistler',
                     annual_revenue: 1_900_000,
                     mens_apparel: true,
                     womens_apparel: false)

whistler.save

yaletown = Store.new(name: 'Yaletown',
                     annual_revenue: 430_000,
                     mens_apparel: true,
                     womens_apparel: true)

yaletown.save

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |res|
  name = res.name
  revenue = res.annual_revenue

  puts "#{name} sells mens apparel and has an annual revenue of $#{revenue}"
end

@womens_stores = Store.where(['womens_apparel = ? and annual_revenue < ?', true, 1_000_000])

@womens_stores.each do |res|
  name = res.name

  puts "#{name} sells womens apparel and has an annual revenue of less than $1m"
end
