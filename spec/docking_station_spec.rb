require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  describe "#release_bike" do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end


  it { is_expected.to respond_to(:dock).with(1).argument }

  describe "#dock_bike" do
    it 'docks a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to include(bike)
    end
    it 'raises an error when the dock station is full' do
      20.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error "Dock station full."
    end
  end

  it { is_expected.to respond_to(:bikes) }

  it 'confirms bike in docking station' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes.count).to be >= 1
  end
end
