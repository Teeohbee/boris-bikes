require "docking_station"
require "bike"

describe DockingStation do

# describe DockingStation do
#   it 'responds to release bike' do
#     expect(subject).to respond_to :release_bike
#   end
# end

it { is_expected.to respond_to :release_bike }

it "gets working bike" do
  #expect(subject.release_bike).to be_instance_of Bike

  bike = subject.release_bike
  expect(bike).to be_working

  #bike = subject.release_bike
  #expect(bike).to :working?
end

end
