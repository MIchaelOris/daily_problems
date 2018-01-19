system "clear"
puts "Welcome to Reddit, Read the Posts!"
puts



print " " * 15 + "Select a Post"
input_word = gets.chomp

display_post = Unirest.get("https://www.reddit.com/r/learnprogramming/.json")

posts = posts.body
comments_post = Unirest.get("https://www.reddit.com/r/learnprogramming/comments/6tpc97/psa_about_bots_and_bot_tutorials/") 

definitions.each.with_index do |definition,gorilla|
  "#{index + 1}. #{definition["text"]}"
  puts
end 

puts
puts

