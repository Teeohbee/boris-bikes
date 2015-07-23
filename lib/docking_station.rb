require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity

  def initialize(size = DEFAULT_CAPACITY)
    @bike = []
    @capacity = size
  end

  def release_bike
    fail 'No bikes available' if empty?
    bike.pop
  end

  def dock(bmx)
    fail 'Capacity full' if full?
    bike << bmx
  end

  private

  attr_reader :bike

  def empty?
    bike.empty?
  end

  def full?
    bike.length >= capacity
  end
end
