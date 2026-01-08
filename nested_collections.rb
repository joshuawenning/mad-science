test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

# Accessing elements
puts teacher_mailboxes[0][0] #=> "Adams"
puts teacher_mailboxes[1][0] #=> "Jones"
puts teacher_mailboxes[2][0] #=> "Perez"

# Return elements from the end of an array using a negative index.
puts teacher_mailboxes[2][-1] #=> "Davis"
puts teacher_mailboxes[-1][0] #=> "Perez"
puts teacher_mailboxes[-1][-2] #=> "Smith"

# Insight: `NoMethodError` when tring to access an index of a nonexistent
# nested element
# `nil` when trying to access a nonexistent index of an existing nested element
# Ex:
# teacher_mailboxes[3][0] #=> NoMethodError
# teacher_mailboxes[0][4] #=> nil

#dig method always returns `nil` when trying to access either.
# teacher_mailboxes.dig(3, 0) #=> nil
# teacher_mailboxes.dig(0, 4) #=> nil

# Creating a new nested array insight
# This works, but now all the nested arrays are linked, so updating one will
# change the rest.
mutable = Array.new(3, Array.new(2))
# Creating the nested array in a block prevents this.
# Here, all three inner arrays are independent objects:
nested_arrays = Array.new(3) { Array.new(2) }

# Adding and removing elements
test_scores << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
#=> [97, 76, 79, 93, 100]

# Remove elements using #pop
test_scores.pop #=> [100, 99, 98, 97]
test_scores[0].pop #=> 100

# Iterating over a nested array
# Concept: each row is the nested element and each column is the index of the
# nested element.
teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row: #{row_index} = #{row}"
end
# To iterate over the individual elements inside of each row, you will need
# to nest another enumerable method inside.
teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
  end
end

# If we only need each teacher’s name it would be beneficial to use #flatten
# before iterating.
teacher_mailboxes.flatten.each do |teacher|
  puts "#{teacher} is amazing!"
end

# Determine if any student scored higher than 80 on everything
test_scores.any? do |scores|
  scores.all? { |score| score > 80 }
end
# Switching to #all? would return `true`: if "all" of the nested arrays
# contain "any" number over 80.

# Nested hashes
# hash[:x][:y] - :x is the key of the hash, :y is the key of the nested hash

vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

vehicles[:alice][:year] #=> 2019

# Accessing a key in a nonexistent nested hash:
# `NoMethodError`, `nil` when using #dig

vehicles[:zoe][:year] #=> NoMethodError
vehicles.dig(:zoe, :year) #=> nil

# Adding and removing data is just like regular hashes

vehicles[:dave] = {
  year: 2021,
  make: "Ford",
  model: "Escape"
}

# Add an element to a nested hash
vehicles[:dave][:color] = "red"
# Deleting
vehicles.delete(:blake)
# Delete a key/value pair inside a nested hash
vehicles[:dave].delete(:color)
