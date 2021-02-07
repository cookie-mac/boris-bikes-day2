require 'bike'
describe Bike do


  it "responds to working?" do
  expect(subject).to respond_to (:working?)
  end

  it "can be reported as broken" do
    bike = Bike.new
    bike.is_broken
    expect(bike).to be_broken
  end

end
