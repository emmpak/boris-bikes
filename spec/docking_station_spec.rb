require 'docking_station'

describe DockingStation do

  # it { is_expected.to respond_to(:bikes) }

  describe "#release_bike" do
    it { is_expected.to respond_to(:release_bike) }

    it 'releases a bike' do
      bike = double(:working? => true)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end

    it 'does not release a bike if broken' do
      bike = double(:working? => false)
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error "Bike is broken"
    end
  end

  describe "#dock_bike" do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'docks a bike' do
      bike = double(:bike)
      expect(subject.dock(bike)).to include(bike)
    end

  it 'raises an error when the dock station is full' do
      subject.capacity.times { subject.dock(double(:bike)) }
      expect { subject.dock(double(:bike)) }.to raise_error "Dock station full."
    end
  end


  # it 'confirms bike in docking station' do
  #   bike = double(:bike)
  #   subject.dock(bike)
  #   expect(subject.bikes).to include(bike)
  # end

  describe '#initialize' do
    it '#initialize receives one argument' do
      expect { DockingStation.new(30) }.to_not raise_error
    end

    it 'defaults to capacity of 20 if no argument passed' do
      expect(subject.capacity).to eq 20
    end
  end

  describe '#release_broken_bikes' do
    it 'release the broken bikes' do
     subject.dock(double(:working? => false))
     expect(subject.release_broken_bikes.count).to eq 1
    end
    it 'does not release the working bikes' do
     subject.dock(double(:working? => true))
     expect(subject.release_broken_bikes.count).to eq 0
    end
  end
end
