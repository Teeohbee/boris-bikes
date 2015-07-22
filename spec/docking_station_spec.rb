require "docking_station"

describe DockingStation do

# describe DockingStation do∏
#   it 'responds to release bike' do
#     expect(subject).to respond_to :release_bike
#   end
# end

it { is_expected.to respond_to :release_bike }

it { is_expected.to respond_to(:dock).with(1).argument }

it "gets working bike" do
  subject.dock Bike.new
  bike = subject.release_bike
  expect(bike).to be_working
end

it 'has a default capacity' do
  expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
end


  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when it goes over capacity of 20' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect{subject.dock(Bike.new)}.to raise_error 'Capacity full'
    end
  end

end
