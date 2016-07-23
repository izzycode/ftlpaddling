class Location < ApplicationRecord
  belongs_to :tide_station
  def calculate_distance_to(loc_b)
    if (@direction == loc_b.direction)
      abs(@distance - loc_b.distance)
    else
      @distance + loc_b.distance
    end
  end
end
