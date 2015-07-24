require 'docking_station'

describe DockingStation do

  context 'Initilization' do
    context 'when a size is specified' do
      it 'uses that size' do
        size = 50
        docking_station = DockingStation.new 50
        expect(docking_station.capacity).to eq size
      end
    end

    context 'when no size is specified' do
      it 'uses default capacity' do
        docking_station = DockingStation.new
        expect(docking_station.capacity).to eq DockingStation::DEFAULT_CAPACITY
      end
    end
  end

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }


  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

      it "releases only working bikes" do
      bmr = double :bike, broken?: false, working?: true
      subject.dock bmr
      bmx = subject.release_bike
      expect(bmx).to eq bmr
      expect(bmx).to be_working
    end
    ## Dock successfully, release the same bike successfully, and expect it to be working

    it "does not release broken bikes" do
      bike = double :bike, working?:false
      subject.dock bike
      expect {subject.release_bike}.to raise_error 'No working bikes'
    end



  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

  end

  describe '#dock' do
    it 'raises an error when it goes over capacity of 20' do
      subject.capacity.times { subject.dock(double :bike) }
      expect { subject.dock(double :bike) }.to raise_error 'Capacity full'
    end
  end
end


