require 'dockingstation'
require 'bike'

describe Docking_Station do

  it "has a default capacity of DEFAULT_CAPACITY" do
    docking_station = Docking_Station.new
    expect(docking_station.capacity).to eq Docking_Station::DEFAULT_CAPACITY
  end

  it "allows user to input a specified capacity upon intialize" do
    station = Docking_Station.new(10)
    expect(station.capacity).to eq 10
  end


  it "expects docking station class instances to respond to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

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
      Docking_Station::DEFAULT_CAPACITY.times do
          docking_station.dock(Bike.new)
      end
      expect { docking_station.dock(Bike.new) }.to raise_error "The docking station is full"
    end
  end

  it 'docks the bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq([bike]) #  returns bike from line above
  end
end
