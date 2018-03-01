module ListingsController
  def listings_index_action
    listing_hashs = get_request("/listings")
    listings = Listing.convert_hashs(listing_hashs)

    listings_index_view(listings)
  end

  def listings_show_action
    input_id = listings_id_form

    listing_hash = get_request("/listings/#{address}")
    listing = Listing.new(listing_hash)

    listings_show_view(listing)

    puts "Press enter to continue or type 's' to schedule"
    user_choice = gets.chomp
    if user_choice == 's'
      print "Request a time: "
      input_quantity = gets.chomp
      client_params = {
                       time: input_time,
                       address: address
                      }

      response = Unirest.post("http://localhost:3000/scheduled_showings", parameters: client_params)
      if response.code == 200
        puts JSON.pretty_generate(response.body)
      elsif response.code == 401
        puts "Nope, try logging in first"
      end
    end
  end

  def listings_create_action
    client_params = listings_new_form
    response = Unirest.post("http://localhost:3000/listings", parameters: client_params)

    if response.code == 200
      listing = Listing.new(response.body)
      listings_show_view(listing)
    elsif response.code == 422
      errors = response.body["errors"]
      listings_errors_view(errors)
    elsif response.code == 401
      puts JSON.pretty_generate(response.body)
    end
  end

  def listings_update_action
    input_id = listings_id_form
    listing_hash = get_request("/listings/#{address}")
    listing = Listing.new(listing_hash)

    client_params = listings_update_form(listing)
    response = Unirest.patch("http://localhost:3000/listings/#{address}", parameters: client_params)

    if response.code == 200
      listing = Listing.new(response.body)
      listings_show_view(listing)
    elsif response.code == 422
      errors = response.body["errors"]
      listings_errors_view(errors)
    elsif response.code == 401
      puts JSON.pretty_generate(response.body)
    end
  end

  def listings_search_action
    print "Enter an address to search by: "
    search_term = gets.chomp

    listing_hashs = get_request("/listings?search=#{search_term}")
    listings = listing.convert_hashs(listing_hashs)

    listings_index_view(listings)
  end

  def listings_sort_action(attribute)
    listing_hashs = get_request("/listings?sort=#{attribute}")
    listings = listing.convert_hashs(listing_hashs)

    listings_index_view(listings)
  end
end










