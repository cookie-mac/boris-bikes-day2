require 'dockingstation'
require 'bike'

describe Docking_Station do
  
  it "expects docking station class instances to respond to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe "#release_bike" do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end


  it "gets a bike & expects the bike to be working" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it "responds to dock" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  describe "#dock" do
    it 'raises an error when the docking station is full' do
      docking_station = Docking_Station.new
      bike = Bike.new
      bike2 = Bike.new
      docking_station.dock(bike)
      expect { docking_station.dock(bike2) }.to raise_error "The docking station is full"
    end
  end

  it "responds to bike" do
    expect(subject).to respond_to(:bike)
  end

# does docked bikes return the docked bike (ID)
  it 'docks the bike' do
    bike = Bike.new     # creates bike
    expect(subject.dock(bike)).to eq(bike) #  returns bike from line above
  end

  it "returns the docked bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
