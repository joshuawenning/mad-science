def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}!"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]} years old and live" +
         " in #{options[:city]}."
  end
end

# greeting("Brent")
# greeting("Brent", {age: 55, city: "New York City"})

# Curly braces `{}` are not required when a hash is the last argument.
# This is equivalent:
greeting("Brent", age: 62, city: "New York City")