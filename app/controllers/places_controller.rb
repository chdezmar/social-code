class PlacesController < ApplicationController

  skip_before_action :verify_authenticity_token, :only => :create

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.create(place_params)
      if @place.save
      redirect_to '/places'
    else
      render 'new'
    end
  end

  private

  def place_params
    params.permit(:name, :address, :google_place_id )
  end

end
