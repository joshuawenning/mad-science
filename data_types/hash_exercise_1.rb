# Given a hash of family members, with keys as the title and an array of names
# as the values, use Ruby's built-in select method to gather only siblings'
# names into a new array.

family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

siblings = family.select { |key, value| key == :sisters || key == :brothers }

puts siblings.values.to_a

# Their Solution
# immediate_family = family.select do |k, v|
#   k == :sisters || k == :brothers
# end

# arr = immediate_family.values.flatten
# p arr