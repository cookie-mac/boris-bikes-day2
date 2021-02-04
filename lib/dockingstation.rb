require_relative './bike'

class Docking_Station

  attr_reader :docked_bike

def release_bike
  if @docked_bike == nil
    raise "No bikes available"
  else
    Bike.new
  end
end


def dock(bike)
  @docked_bike = bike
end

#def capacity
#  @capacity = 1
#end

#def docked_bike
#  @docked_bike
#end

# attr_reader :bike

#def bike
#  @bike
#end

#def receive_bike
#  Bike.new
#end

end
