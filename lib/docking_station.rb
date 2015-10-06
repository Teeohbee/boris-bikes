require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity

  def initialize(size = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = size
  end

  def release_bike
    fail 'No bikes available' if empty?
    bike = bikes.pop
    fail 'Bike is broken' if bike.broken?
    bike
  end

  def dock(bike)
    fail 'Capacity full' if full?
    bikes << bike
  end

  private

  attr_reader :bikes

  def empty?
    bikes.empty?
  end

  def full?
    bikes.length >= capacity
  end
end
