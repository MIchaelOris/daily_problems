# actionfigure_chewbacca = {:color_name => "brown", :weapon_name => "raygun", :price => 10, :active => true}
# actionfigure_ironman = {:color_name => "red", :weapon_name => "blaster", :price => 20, :active => true}
# actionfigure_mickeymouse = {:color_name => "black", :weapon_name => "glove", :price=> 5, :active => true}



class Doll
attr_reader :name, :beautyproduct, :price, :active
  attr_writer :active 
  

  def initialize(input_options)
    @name = input_options[:name]
    @weapon = input_options[:beautyproduct]
    @price = input_options[:price]
    @active = input_options[:active]
  end 

  def print_info
    puts "#{name} has a #{beautyproduct} and is $#{price}"
  end 
  
  def discount_price
    @price = @price - 2 
  end 
end 






