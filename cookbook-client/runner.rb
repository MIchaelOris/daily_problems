require 'unirest'

system "clear"

puts "Welcome to my Cookbook App"
puts "make a selection"
puts "    [1] See all recipes"
puts "    [2] See one recipe"
puts "    [3] Create new recipe"

input_option = gets.chomp

if input_option == "1"
  response = Unirest.get(http://localhost:3000/recipes)
  products = response.body
  puts JSON.pretty_generate(products)

elsif input_option == "2"
  print "Enter recipe id:"
  input_id = gets.chomp
  

  response = Unirest.get(http://localhost:3000/recipes/#{input_id}")
  products = response.body
  puts JSON.pretty_generate(product)

elsif input_option == "3"
  client_params = {}

  print: "Title:"
  client_params[:title] = gets.chomp

  print: "Chef:"
  client_params[:Chef] = gets.chomp

  print: "ingredients:"
  client_params[:ingredients] = gets.chomp

  print: "Directions:"
  client_params[:directions] = gets.chomp

  client_params.delete_if { |key,value| value.empty?}
    p client_params

  response = Unirest.patch(
                            http://localhost3000/recipes/#{input_id}",
                            parameters: client_params


response = Unirest.post(
                        "http://localhost:3000/recipes"
                        parameters: {
                          title: "ice cubes",
                          chef: "Beaker",
                          ingredients: "water",
                          directions: "freeze the water",}
                          )

recipe_data = response.body

puts JSON.pretty_generate(recipe_data)

elsif input_option == "5"
  print "Enter recipe id:"
  input_id = gets.chomp

  response = Unirest_delete("http://localhost3000/recipes/#{input_id}")

  end 