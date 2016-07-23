class WelcomeController < ApplicationController
  def home
  end

  def form_submit
    @destination = "The Atlantic Ocean"
    @calculated_time = "12pm"
    p "<>"*47
    p "inside 'form_submit'"
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end
end
