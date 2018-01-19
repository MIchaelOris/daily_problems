class Vehicle
def initialize(input_options)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end 



class Car < Vehicle 
  def initialize(input_options)
    @speed = input_options[:speed]
    @direction = input_options[:direction]
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

end 

class Bike
  def initialize(input_options)
    @speed = 0
    @direction = input_options[:direction]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def ring_bell
    puts "Ring ring!"
  end
end

civic = Car.new(
                speed:"25"
                
              
          honk_horn:
                make: "Honda"
                model: "Civic"
                )

p civic