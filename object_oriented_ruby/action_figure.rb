
module store_item
require "./module.rb"

require "./store_item-class.rb"

class Actionfigure < Toy
  include discount

  def initialize(input_options)
   super(input_options)
    @weapon = input_options[:weapon]
  
end 