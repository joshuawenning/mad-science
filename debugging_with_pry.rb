gem 'readline' # Explicitly have to require in Ruby 4
require 'pry-byebug'

# def isogram?(string)
#   original_length = string.length
#   string_array = string.downcase.split

#   binding.pry

#   unique_length = string_array.uniq.length
#   original_length == unique_length
# end

# puts isogram?("Odin")

def yell_greeting(string)
  name = string

  binding.pry

  name = name.upcase
  greeting = "HEY, #{name}!"
  puts greeting
end

yell_greeting("Joe")