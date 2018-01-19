require 'unirest'

system "clear"

puts "Welcome to my Toy Store"
puts "make a selection"
puts "    [1] See all Action Figures"
puts "    [2] See one Action Figure"
puts "    [3] Create new Action Figure"

input_option = gets.chomp

if input_option = "1"
  response = Unirest.get(http://localhost:3000/products)
  products = response.body
  puts JSON.pretty_generate(products)
  
elsif input_option = "2"
  print "Enter product id:"
  input_id = gets.chomp
  

  response = Unirest.get(http://localhost:3000/products/)
  products = response.body
  puts JSON.pretty_generate(product)

elsif input_option = "3"
  client_params = {}

  print: "Name:"
  client_params[:title] = gets.chomp

  print: "Price:"
  client_params[:price] = gets.chomp

  print: "image_url:"
  client_params[:image_url] = gets.chomp

  print: "Description:"
  client_params[:description] = gets.chomp

response = Unirest.post(
                        "http://localhost:3000/products"
                        parameters: {
                          name: "ice cubes",
                          price: 20,
                          image_url: "",
                          description: "freeze the water",}
                          )

product_data = response.body

puts JSON.pretty_generate(product_data)