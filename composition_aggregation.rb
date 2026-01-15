# Composition Example
# Def: The container owns the contained objects, and their lifecycles are
# tightly linked.
#
# `Car` has an `Engine`, and Car instances contain an Engine object.
# When the Car is instantiated, the Engine is also instantiated.
# Likewise, when the Car object is destroyed, the Composition
# Engine object is also destroyed.
class Engine
  def start
    puts "Engine starting . . ."
  end
end

class Passenger
end

class Car
  def initialize(passengers)
    # Engine instance is created when Car is created
    @engine = Engine.new
    # Passengers are given to the Car at creation
    @passengers = passengers
  end

  def start
    @engine.start
  end
end

# Aggregation Example
# Def: The container does not own the contained objects; they can
# exist independently.

# Passengers can exist without `Car`
passengers = [Passenger.new, Passenger.new]

my_car = Car.new(passengers)
my_car.start
