require_relative 'bike'
require_relative 'van'

class DockingStation
  attr_reader :capacity


  def initialize(capacity=20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No bikes available" if @bikes.empty?
    raise "Bike is broken" if !bikes[-1].working?
    @bikes.pop
  end

  def dock(bike)
    raise "Dock station full." if @bikes.count >= @capacity
    @bikes << bike
  end

  def release_broken_bikes
    bikes.select do |bike|
      !bike.working?
    end
  end

  private

  attr_reader :bikes

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
