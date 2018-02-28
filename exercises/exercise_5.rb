require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@revenue_sum = Store.sum(:annual_revenue)

puts "The annual revenue of all the stores is $#{@revenue_sum}"

@revenue_avg = Store.average(:annual_revenue)

puts "The average revenue across all the stores is $#{@revenue_avg}"

@one_mil_plus = Store.where("annual_revenue > ?", 1000000).count

puts "#{@one_mil_plus} stores earn more than $1m"
