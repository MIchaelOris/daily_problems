require "unirest"

response = Unirest.get ("https://data.cityofchicago.org/resource/xzkq-xp2w.json")
employess = response.body

employess.each do |employee|
  puts "Name: #{employee['name']}"
  puts "Title" "#{['job_title]}"
  puts ""
end

puts "I can't come out to play"