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
  # It takes a symbol as an argument, which it uses to create the method name
  # for the getter and setter methods.
  # Only want "getter", use `:attr_reader`
  # Only want "setter", use `:attr_writer`
  attr_accessor :name
  # Track more states ex:
  # attr_accessor :name, :height, :weight

  # Instance method, also known as a constructor
  # Gets called by the `new` class method
  def initialize(name)
    # Instance variable
    # Exists as long as the object instance exists
    @name = name
  end

  include Speak

  # "Getter" method
  # def name
  #   @name
  # end

  # "Setter" method
  # def name=(n)
  #   @name = n
  # end
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new("Sparky")
sparky.speak("Arf!")
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name
# james = HumanBeing.new
# james.speak("Hello!")

# puts GoodDog.ancestors
