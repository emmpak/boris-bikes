require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity


  def initialize(capacity=20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Dock station full." if @bikes.count >= @capacity
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
