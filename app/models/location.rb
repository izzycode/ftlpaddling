class Location < ApplicationRecord
  belongs_to :tide_station
  def calculate_distance_to(loc_b)
    if (direction == loc_b.direction)
      (distance - loc_b.distance).abs
    elsif direction == "origin"
      loc_b.distance
    elsif loc_b.direction == "origin"
      distance  
    else
      distance + loc_b.distance
    end
  end
end
