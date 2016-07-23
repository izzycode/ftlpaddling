class WelcomeController < ApplicationController
  def home
    @locations = Location.pluck(:name).insert(0,"-please select a location-")
  end

  def form_submit
    start_location = Location.find_by(name: params[:start_location])
    end_location = Location.find_by(name: params[:end_location])
    p "<>"*44
    p start_location
    p end_location

    @distance = start_location.calculate_distance_to(end_location)
    @tide_info = WelcomeHelper::TidesAPI.new(@start_location, year: params[:start_time][6,4], month: params[:start_time][0,2], day: params[:start_time][3,2]).tides.join("<br>")
    @destination = "The Atlantic Ocean"
    @calculated_time = "12pm"

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end
end
