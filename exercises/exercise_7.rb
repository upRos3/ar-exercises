require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :store_id, presence: true
end


class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
end

print "TYPE A NAME BRUH: "
@newer_store_name = gets.chomp

@newer_store = Store.create({name: @newer_store_name})

puts @newer_store.errors.full_messages
