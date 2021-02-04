require 'dockingstation'
require 'bike'

describe Docking_Station do
  it "expects docking station class instances to respond to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "gets a bike & expects the bike to be working" do
    if @docked_bike != nil
    bike = subject.release_bike
    expect(bike).to be_working
  end
  end

  it "responds to dock" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "responds to bike" do
    expect(subject).to respond_to(:docked_bike)
  end

# does docked bikes return the docked bike (ID)
  it 'returns the docked bike' do
    bike = Bike.new     # creates bike
    subject.dock(bike) # bike is docked
    expect(subject.docked_bike).to eq(bike) #  returns bike from line above
  end


  #chapter 12
  it "fails to release bike, if none are available" do
      if subject.docked_bike == nil
        expect { subject.release_bike }.to raise_error "No bikes available"
      end
      #subject.docked_bikes.empty?
      #expect { subject.release_bike }.to raise_error |error|
      #1.should == 2
    end



=begin
   it 'responds to bike' do
    expect(subject).to respond_to(:bike)
  end

  it 'returns the bike stored in it' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.dock(bike)).to eq(bike)
  end
=end

  #it { is_expected.to respond_to(:dock).with(1).argument }

  #it "docking station toi respond to receive_bike method" do
  #  expect(subject).to respond_to (:receive_bike)
  #end

  #it "expect bike to be returned / docked" do
  #end

end
