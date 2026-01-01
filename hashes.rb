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
hash1 = { "a" => 1, "b" => 2 }
hash2 = { "b" => 3, "c" => 4 }
hash.merge(hash2) #=> { "a" => 1, "b" => 3, "c" => 4 }

# Symbols syntax
# More popular and performant, but only works for symbols
# Accessing is the same for both syntaxes
japanses_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

japanses_cars[:honda] #=> "Accord"
