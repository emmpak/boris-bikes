class Van
  attr_reader :van_bikes
  def initialize
    @van_bikes = []
  end

  def get_bikes(station)
    station.bikes.each do |bike|
      if !bike.working?
        van_bikes << bike
      end
    station.remove_bikes
    end
  end

end
