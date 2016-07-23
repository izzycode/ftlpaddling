class WelcomeController < ApplicationController
  def home
    @locations = Location.pluck(:name).insert(0,"-please select a location-")
  end

  def form_submit
    @destination = "The Atlantic Ocean"
    @calculated_time = "12pm"

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end
end
