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

  def initialize(required_capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = required_capacity
  end

def release_bike
  fail "No bikes available" if empty?
  @bikes.pop
end

def dock(bike)
  fail "The docking station is full" if full?
  if bike.broken?
    @bikes.insert(0, bike)
  else
    @bikes << bike
  end
  #puts "Is the bike broken? Y/N"
#  broken_answer = gets.chomp
end

  private
    #attr_reader :bikes
    def full?
      @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty? || @bikes[-1].broken?
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
