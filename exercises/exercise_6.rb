require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  belongs_to              :store
  has_many                :employees
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "James", last_name: "Pelechopta", hourly_rate: 40)

@store1.employees.create(first_name: "Weebl", last_name: "Bob", hourly_rate: 2000)

@store2.employees.create(first_name: "Whacko", last_name: "Jacko", hourly_rate: 10)

@store2.employees.create(first_name: "Meeeeemeeme", last_name: "YEAAAAAAAAAAA", hourly_rate: 1337)
