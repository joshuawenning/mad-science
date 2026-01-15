friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
# invited_list = []

# for friend in friends
#   if friend != 'Brian'
#     invited_list.push(friend)
#   end
# end

# puts invited_list

# This whole loop can be condensed, using the #select enumerable method.
# puts friends.select { |friend| friend != 'Brian' }
# Or more to the point:
# puts friends.reject { |friend| friend == 'Brian' }

# Each method
friends.each { |friend| puts "Hello #{friend}!" }

# For multi-line blocks
my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

# Using #each on a hash
my_hash = { "one" => 1, "two" => 2 }
# my_hash.each { |key, value| puts "#{key} is #{value}"}
my_hash.each { |pair| puts "#{pair}"}

friends.each { |friend| friend.upcase } # Returns original array

# Using #each_with_index
# The second variable's value is the index of that element within the array
fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.each_with_index { |fruit, index| puts fruit if index.even? }

# Map
# The #map method (also called #collect) transforms each element from and
# array according to whatever block you pass to it and returns the
# transforms elements in a new array.

# shouting_at_friends = []
# friends.each { |friend| shouting_at_friends.push(friend.upcase) }
# puts shouting_at_friends

# Simplified
friends.map { |friend| puts friend.upcase }

#map and #gsub together
# Big picture: Whenever you want to return a new array with the results of
# running your block of code, #map is the method for you!
my_order = ['medium Big Mac' 'medium fries' 'medium milkshake']
my_order.map { |item| item.gsub('medium', 'extra large') }

# Using #select with a hash
responses = {
  'Sharon' => 'yes',
  'Leo' => 'no',
  'Leila' => 'no',
  'Arun' => 'yes',
}

puts responses.select { |person, response| response == 'yes' }

# Reduce
# Takes an array or hash and reduces it down to a single object
# Use #reduce when you want to get an output of a single value.
# Ex: obtain the sum of an array of numbers

my_numbers = [1, 2, 3, 4]
# `sum` here is called the accumulator. The result of each iteration is
# stored in it and then passed to the next iteration.
my_numbers.reduce { |sum, number| sum + number }
# You can also set a different initial value for the accumulator (other than 0).
my_numbers.reduce(1000) { |sum, number| sum + number }

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end

# Explained
hundreds = Hash.new(100)

# Return values of enumerables - store instread of destroying with bang `!`

def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end

# puts friends
puts invited_friends(friends)

