require 'docking_station'

describe DockingStation do

  # context 'Initilization' do
  #   context 'when a size is specified' do
  #     it 'uses that size' do
  #       size = 50
  #       docking_station = DockingStation.new 50
  #       expect(docking_station.capacity).to eq size
  #     end
  #   end

  #   context 'when no size is specified' do
  #     it 'uses default capacity' do
  #       docking_station = DockingStation.new
  #       expect(docking_station.capacity).to eq DockingStation::DEFAULT_CAPACITY
  #     end
  #   end
  # end

  it 'docking station must release bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'can dock a bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'gets working bike' do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
    it 'raises an error when releasing broken bike' do
      bike = double :bike, broken?: true
      subject.dock bike
      expect { subject.release_bike }.to raise_error 'Bike is broken'
    end
  end

  describe '#dock' do
    it 'raises an error when it goes over capacity of 20' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error 'Capacity full'
    end
  end
end
