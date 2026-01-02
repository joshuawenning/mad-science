my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}

# my_hash = Hash.new

hash = { 9 => "nine", :six => 6 }

shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"] #=> "sandals"

# Provide a default value, which gets retured when the key `tastic` is not found.
shoes.fetch("tastic", "super") #=> "super"

# Add a key-value pair the hash `shoes`
shoes["fall"] = "sneakers" #=> { . . . , "fall" => "sneakers" }

# Change the value of an existing key
shoes["summer"] = "flip-flops" #=> { "summer" => "flip-flops", . . . }

# Removing data with the `#delete` method
shoes.delete("summer")

# `#key` and `#values` methods to return arrays of each

books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

books.keys #=> ["Infinite Jest", "Into the Wild"]
books.values #=> ["David Foster Wallace", "Jon Krakauer"]

# Merging two hashes
# Note: the duplicate key (`b`) values in hash2 overwrite hash1
# Destructive: `#merge!` - Changes original vs. keeping the original and returning a new hash
hash1 = { "a" => 1, "b" => 2 }
hash2 = { "b" => 3, "c" => 4 }
hash1.merge(hash2) #=> { "a" => 1, "b" => 3, "c" => 4 }

# Symbols syntax
# More popular and performant, but only works for symbols
# Accessing is the same for both syntaxes
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

japanese_cars[:honda] #=> "Accord"

# Hash keys can use different data types. You have to use the rocket notation
# when deviating from symbols as keys.

{"height" => "6ft"} # string key
{["height"] => "6ft"} # array key
{1 => "one"} # integer key
{33.33 => "thirty three point something"} # float key
{{key: "key"} => "hash as a key"} # hash key

# Common Hash Methods
# `#key?`
japanese_cars.key?("honda") #=> true
# `#select`
# Allows you to pass a block and will return any key-value pairs that evaluate
# to true when passed to the block

name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}
name_and_age.select {|k,v| k == "Bob"} #=> {"Bob" => 42}
name_and_age.select {|k,v| (k == "Bob") || (v == 19)} #=> {"Bob"=>42, "Joe"=>19}

# `#fetch` - Return value of a key if it exists
# You can specify a return option
name_and_age.fetch("Steve") #=> 31
name_and_age.fetch("Larry", "He's not in the hash.") #=> He's not in the hash.

# `#to_a` - Convert to an array (not permanent)
