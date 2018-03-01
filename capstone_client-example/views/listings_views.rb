require 'paint'

MARGIN = 10

module ListingsViews
  def listings_show_view(listing)
    puts 
    puts " " * MARGIN + Paint["#{listing.address} - address: #{listing.address}", :white]
    puts " " * MARGIN + Paint["-" * 40, '#CC00CC']
    end
    puts
  end

  def listings_index_view(listings)
    listings.each do |listing|
      puts " " * MARGIN + "=" * 40
      listings_show_view(listing)
    end
  end

  def listings_id_form
    print "Enter listing address: "
    gets.chomp
  end

  def listings_new_form
    client_params = {}

    print "Agent ID: "
    client_params[:agent_id] = gets.chomp

    print "Address: "
    client_params[:address] = gets.chomp

    print "Neighborhood: "
    client_params[:neighborhood] = gets.chomp

    print "Number of Bedrooms: "
    client_params[:bedrooms] = gets.chomp

    print "Price: "
    client_params[:price] = gets.chomp

    client_params
  end

  def listings_errors_view(errors)
    puts
    puts "Errors"
    puts "=" * 60
    errors.each do |error|
      puts error
    end
  end

  def listings_search_form
    print "Enter an Neighborhood to search by: "
    gets.chomp
  end
















