class PlaceController < ApplicationController
def index
    @place = Place.all
    render 'index.json.jbuilder'
  end

  def create
    @person = Place.new(
                         name: params[:name],
                         address: params[:address]
                        )
    if @place.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @place.errors.full_messages}, status: :unprocessable_entity
    end
  end
end

