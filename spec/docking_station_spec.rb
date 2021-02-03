require 'dockingstation'
require 'bike' 

describe Docking_Station do
  it "expects docking station class instances to respond to release_bike" do
    expect(subject).to respond_to (:release_bike)
  end
  
  it "gets a bike & expects tyhe bike to be working" do 
    bike = subject.release_bike
    expect(bike).to be_working
  end 

end
