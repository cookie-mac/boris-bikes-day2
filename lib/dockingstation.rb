require_relative './bike'

class Docking_Station

  attr_reader :bike

def release_bike
  fail "No bikes available" unless @bike
  @bike
end


def dock(bike)
  fail "The docking station is full" if @bike
  @bike = bike
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
