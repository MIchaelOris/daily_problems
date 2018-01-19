# actionfigure_chewbacca = {:color_name => "brown", :weapon_name => "raygun", :price => 10, :active => true}
# actionfigure_ironman = {:color_name => "red", :weapon_name => "blaster", :price => 20, :active => true}
# actionfigure_mickeymouse = {:color_name => "black", :weapon_name => "glove", :price=> 5, :active => true}


require "./module.rb"

require "./store_item-class.rb"


class Doll < Toy
  include discount

  def initialize(input_options)
    super(input_options)
    @beautyproduct = input_options[:beautyproduct]
  end 


end 






