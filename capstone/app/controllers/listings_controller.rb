module ListingsController
  def index
    listings = Listing.all

    search_term = params[:search]
    if search_term
      listings = listings.where("name iLike ?", "%#{search_term}%")
    end 

    sort_attribute = params[:sort]
    if sort_attribute
      @listings = @listings.order(sort_attribute => asc)
    end 

    render 'index.json.jbuilder'
  end 

  def create
    @listing = Listing.new(
      agent: params[:agent],
      address: params[:address],
      neighborhood: params[:price],
      bedrooms: params[:bedrooms],
      price: params[:price],
      apartment_size: params[:apartment_size],
      image_url: params[:image_url])
    if @listing.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @listing.errors.full_messages}, status: :unprocessable_entity
    end
  end 


  def show
    @listing = Listing.find(params[:id])
    render 'show.json.jbuilder'
  end 

end



