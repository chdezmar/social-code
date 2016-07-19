class PlacesController < ApplicationController

  def index
    @place = Place.all
  end

  def new
    @place = Place.new
  end

end
