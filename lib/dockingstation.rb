require_relative './bike'

class Docking_Station
  
  attr_reader :docked_bike

def release_bike
  Bike.new
end

def dock(bike)
  @docked_bike = bike
end


# attr_reader :bike

#def bike
#  @bike
#end

#def receive_bike
#  Bike.new
#end

end
