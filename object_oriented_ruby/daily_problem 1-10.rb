



def reverse_a_string(string)
  backwards = string.split("")
  reversed = []
  string.size.times { reversed << backwards.pop }
  reversed.join
end

p reverse_a_string("abcde")  #=> "edcba"