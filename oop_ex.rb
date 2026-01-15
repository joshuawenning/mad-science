# Instance variables keep track of state, and instance methods expose
# behavior for objects.

module Speak
  def speak(sound)
    # Use the `name` getter method, given by `attr_accessor`
    puts "#{name} says #{sound}"
  end
end

class GoodDog
  # Ruby's built-in way to create "getter" and "setter" methods
  #
  # It takes a symbol as an argument, which it uses to create the method name
  # for the getter and setter methods.
  # Only want "getter", use `:attr_reader`
  # Only want "setter", use `:attr_writer`
  attr_accessor :name, :height, :weight

  # Instance method, also known as a constructor
  # Gets called by the `new` class method
  def initialize(n, h, w)
    # Instance variable
    # Exists as long as the object instance exists
    @name = n
    @height = h
    @weight = w
  end

  include Speak

  # Using `self` here to call a setter method, not create a local variable
  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new("Sparky", "12 in", "10 lbs")
puts sparky.info
sparky.speak("Arf!")
puts sparky.name
sparky.change_info('Spartacus', '24 in', '20 lbs')
puts sparky.info
# james = HumanBeing.new
# james.speak("Hello!")

# puts GoodDog.ancestors
