
class Toy
  
  def initialize(input_options)
    @name = input_options[:name]
    @price = input_options[:price]
    @active = input_options[:active]
  end 

  def print_info
    puts "#{name} is $#{price}"
  end 
  
end 