require_relative './bike'

class Docking_Station
=begin
puts "How many bikes would you like this station to hold?"
@capacity = gets.chomp
=end

  DEFAULT_CAPACITY = 20
  attr_reader :capacity

  #def capacity
  #  @capacity
  #end

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
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
    #attr_reader :bikes
    def full?
      @bikes.count >= DEFAULT_CAPACITY
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
