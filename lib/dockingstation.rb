require_relative './bike'
class Docking_Station

def release_bike
  Bike.new
end

def dock(bike)
  @bike = bike
end

attr_reader :bike

#def bike
#  @bike
#end

#def receive_bike
#  Bike.new
#end

end
