# Predicate enumerable methods are indicated by a `?`.

numbers = [5, 6 , 7, 8]

#include? examples
puts numbers.include?(6)
puts numbers.include?(3)

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_list = friends.select { |friend| friend != 'Brian' }
puts invited_list.include?('Brian')

large_numbers = [21, 42, 303, 499, 550, 811]

#any? example
puts large_numbers.any? { |number| number > 500 }

#all? example
# Special note: #all? will return true by default unless the block returns
# false or nil.
# Check whether all the words in our list are more than 3 characters long
# without #each.

fruits = ["apple", "banana", "strawberry", "pineapple"]

puts fruits.all? { |fruit| fruit.length > 3 }

#none?
fruits.none? { |fruit| fruit.length > 10 } #=> true
#one? - Exactly one match
fruits.one? { |fruit| fruit.length > 9 } #=> true
