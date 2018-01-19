module Movement
  
 def accelerate
    @speed += 10
  end
  def brake
    @speed = 0
  end
  def turn(new_direction)
    @direction = new_direction
  end

end 

class Vehicle

  def initialize
    @speed = 0
    @direction = 'north'
  end
end 


class Car
  include Movement
def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike
include Movement

def ring_bell
    puts "Ring ring!"
  end

end

car = Car.new