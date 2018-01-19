require 'unirest'

system "clear"

puts

puts "=" * 70 
puts "Weather Brought to you by the best".center(70)
puts "=" * 70 
puts 

print " " * 15 + "Enter a city:"
city = gets.chomp

print " " * 15 + "Enter a state:"
state = gets.chomp

puts
puts
puts ("-" * 60).center(70)

response = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22chicago%2C%20il%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")

channel = response.body[""]

p channel  = response.body["query",]["results"]["channel"]

temp_unit = channel["units"]["temperature"]
location_city = channel
location_state = channel 

temperature = channel["item"]["condition"]["temp"]
condition = channel["item"]["condition"]["temp"]

puts 


city = channel["channel"]["location"]
p city 