# Ruby offers implicit return for methods, without a `return` keyword.
# This means that the last expression that was evaluated automatically gets
# returned, like `Joshua` below.

# def my_name
#   "Joshua"
# end

# puts my_name

# `name` is the parameter and `"James"` is the argument.
# def greet(name)
#   "Hello, #{name}!"
# end

# puts greet("James")

# Default parameters
def greet(name = "stranger")
  "Hello, #{name}!"
end

puts greet #=> Hello, stranger!
puts greet("Jane")

# def even_odd(number)
#   if number.even?
#     "That is an even number."
#   else
#     "That is an odd number."
#   end
# end

# puts even_odd(16)
# puts even_odd(17)

# Explicit return example
# Using the keyword `return` stops the method from continuing.

def my_name
  return "Mr. Interrupter"
  "Jane Doe"
end

puts my_name

# Useful example: checks inputs for errors before continuing

def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number.even?
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20)
puts even_odd("nope") #=> A number was not entered.

# Difference between puts and return

def return_squared(number)
  number * number
end

# Wouldn't be able to assign `x` if `return_squared` used:
# `puts number * number`
x = return_squared(20)
y = 100

sum = x + y
puts "The sum of #{x} and #{y} is #{sum}."

# Chaining methods
# Each method call build off of the outcome of the previous method in the chain
phrase = ["be", "to", "not", "or", "be", "to"]
puts phrase.reverse.join(" ").capitalize #=> To be or not to be

# Predicate methods use `?` at the end of their name
# It's a naming convention that Ruby uses for methods that return a Boolean

puts 12.between?(10, 15)

# Bang methods and variable re-assignment

whisper = "HELLO"
puts whisper.downcase #=> "hello"
puts whisper #=> HELLO
# You can overwrite you data by variable re-assignment
whisper = whisper.downcase
# Or by adding `!` at the end of your method, which overwrites the
# original value

puts whisper.downcase! #=> "hello"
puts whisper #=> "hello"