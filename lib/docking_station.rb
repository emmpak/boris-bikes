require_relative 'bike'
require_relative 'van'
require_relative 'garage'


class DockingStation
  public

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity
  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    fail "No Bikes" if empty?
    fail "Bike Broken" unless bikes.last.working?
    bikes.pop
  end

  def dock(bike)
    fail "Dock Full" if full?
    bikes << bike
  end

  def remove_bikes
    bikes.map do |bike|
      if bike.working? == false
        bikes.delete(bike)
      else bike
      end
    end
  end

  private

  def empty?
    bikes.empty?
  end

  def full?
    bikes.count >= @capacity
  end

end
