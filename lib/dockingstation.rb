require_relative './bike'

class Docking_Station

  #attr_reader :bike
  def initialize
    @bikes = []
  end

def release_bike
  fail "No bikes available" if empty?
  @bikes.pop
end

def dock(bike)
  fail "The docking station is full" if full?
  @bikes << bike
end

  private
    def full?
      @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end
  
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
