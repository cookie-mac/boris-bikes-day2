require 'dockingstation'

describe Docking_Station do
  it "expects docking station class instances to respond to release_bike" do
    expect(subject).to respond_to (:release_bike)
  end
end
