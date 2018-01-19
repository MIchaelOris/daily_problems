puts "What is your favorite food?"

food_1= []
5.times do  
  food_1 << "I Love " + gets.chomp.to_s
end

index = 0
number = 1 

5.times do 
  puts "#{number}" + ". " + "#{food_1[index]}"
  index = index + 1 
  number = number + 1 
end








