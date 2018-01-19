
require "unirest"

while looking_up_words = true


system "clear"
puts "All the words brought to you by Josh"
puts



print " " * 15 + "Enter a word:"
input_word = gets.chomp

definitions_response = Unirest.get("http://developer.wordnik.com/docs.html#!/word/getDefinitions_get_2")

definitions = definitions_response.body

definitions.each.with_index do |definition,gorilla|
  "#{index + 1}. #{definition["text"]}"
  puts
end 

puts
puts



top_example_response = Unirest.get("http://api.wordnik.com:80/v4/word.json/butterfly/topExample?useCanonical=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5
")

top_example = top_example.response.body

puts "TOP EXAMPLE"
puts *"-"* + 40
puts top_example["text"]

puts 
puts


pronunciations_response = Unirest.get("http://api.wordnik.com:80/v4/word.json/cow/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5
")

pronunciations = pronunciations_response.body 

puts "PRONUNCIATION"
puts *"-"* + 40
first_pronunciation = pronunciations[0]
if first_pronunciations[0]["raw"]
puts pronunciations["raw"]
end 



