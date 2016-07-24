class MapController < ApplicationController

  def index
    @places = Place.all
  end
end
