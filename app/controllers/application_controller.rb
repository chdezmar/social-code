class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_location_manager

  def load_location_manager
      @location_manager = LocationManager
  end

end
