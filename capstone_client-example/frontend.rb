require 'unirest'
require_relative 'controllers/listings_controller'
require_relative 'views/listings_views'
require_relative 'models/listing'

class Frontend
  include ListingsController
  include ListingsViews

  def run
    while true
      system "clear"

      puts "Welcome to Virtual Realtor!"
      puts "Create an Account to search for Listings in your Area"
      puts "    [1] See Listings by Neighborhood"
      puts "        [1.1] Sort listings by number of Bedrooms"
      puts "        [1.2] Sort listings by price"
      puts "    [2] Schedule an Appointment"
      puts "    [3] Create a Listing"
      puts "    [4] See your Appointments"
      puts "    [5] Confirm/Cancel/Reschedule an Appointment"
      puts
      puts "    [signup] Signup (create a User/Agent)"
      puts "    [login]  Login (create a JSON web token)"
      puts "    [q] Quit"

      input_option = gets.chomp

      if input_option == "1"
        listings_index_action
      elsif input_option == "1.1"
        listings_search_action("bedrooms")
      elsif input_option == "1.2"
        listings_sort_action("price")
      elsif input_option == "2"
        listings_show_action
      elsif input_option == "3"
        listings_create_action
      elsif input_option == "4"
        listings_update_action
      elsif input_option == "5"
        response = Unirest.get("http://localhost:3000/listings")
        if response.code == 200
          puts JSON.pretty_generate(response.body)
        elsif response.code == 401
          puts "Please sign up for an account to see listings"
        end
        puts
        puts "Here are all the listings you have scheduled"
        puts
        response = Unirest.get("http://localhost:3000/scheduled_listings")
        scheduled_showings = response.body
        puts JSON.pretty_generate(scheduled_showings)

        puts "Press enter to continue,"
        puts "or press 's' to schedule a showing"
        puts "or press 'c' to cancel a showing"

        sub_option = gets.chomp

        if sub_option == 's'
          response = Unirest.post('http://localhost:3000/listings')
          order_hash = response.body
          puts JSON.pretty_generate(appointment_hash)
        elsif sub_option == 'r'
          scheduled_showingss.each do |scheduled_showing|
            puts "[#{scheduled_showing["address"]}]"
          end
          print "enter the address to remove: "
          remove_id = gets.chomp
          response = Unirest.delete("http://localhost:3000/scheduled_showings/#{remove_address}")
          puts JSON.pretty_generate(response.body)
        end
      elsif input_option == "signup"
        puts "Signup"
        puts
        client_params = {}

        print "Name: "
        client_params[:name] = gets.chomp
        
        print "Email: "
        client_params[:email] = gets.chomp
        
        print "Password: "
        client_params[:password] = gets.chomp
        
        print "Password confirmation: "
        client_params[:password_confirmation] = gets.chomp
        
        response = Unirest.post("http://localhost:3000/users", parameters: client_params)
        puts JSON.pretty_generate(response.body) 
      elsif input_option == "login"
        puts "Login"
        puts
        print "Email: "
        input_email = gets.chomp
        print "Password: "
        input_password = gets.chomp

        response = Unirest.post(
                                "http://localhost:3000/user_token", 
                                parameters: {
                                              auth: {email: input_email, password: input_password}
                                            }
                                )

        puts JSON.pretty_generate(response.body) #optional

        jwt = response.body["jwt"]
        Unirest.default_header("Authorization", "Bearer #{jwt}")
      elsif input_option == "logout"
        jwt = ""
        Unirest.clear_default_headers
      elsif input_option == "q"
        puts "thank you for using Virtual Realtor"
        exit
      end
      gets
    end
  end

private
  def get_request(url, client_params={})
    Unirest.get("http://localhost:3000#{url}", parameters: client_params).body
  end

  def post_request(url, client_params={})
    Unirest.post("http://localhost:3000#{url}", parameters: client_params).body
  end

  def patch_request(url, client_params={})
    Unirest.patch("http://localhost:3000#{url}", parameters: client_params).body
  end

  def delete_request(url, client_params={})
    Unirest.delete("http://localhost:3000#{url}", parameters: client_params).body
  end
end








