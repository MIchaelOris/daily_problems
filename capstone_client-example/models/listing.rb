class Listing
  attr_accessor :agent_id, :address, 
  :neighborhood,:bedrooms,:price
  def initialize(input_options)
    @agent_id = input_options["agent_id"]
    @address = input_options["address"]
    @neighborhood = input_options["neighborhood"]
    @price = input_options["price"]
    @bedrooms = input_options["bedrooms"]
    
  end

  def self.convert_hashs(listing_hashs)
    collection = []

    listing_hashs.each do |listing_hash|
      collection << Listing.new(listing_hash)
    end

    collection
  end
end