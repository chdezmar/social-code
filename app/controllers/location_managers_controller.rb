class LocationManagersController < ApplicationController

  skip_before_action :verify_authenticity_token, :only => :create

  def create
    LocationManager.create(loc_params)
    redirect_to '/'
  end

  def destroy
  end

  private

  def loc_params
    params.permit(:user_id, :place_id)
  end

end
