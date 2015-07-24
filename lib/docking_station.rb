require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity
  attr_reader :bikes

  def initialize(size = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = size
  end

  def release_bike
      fail "No bikes available" if bikes.empty?
      bmx = bikes.select{|bike| bike.working?}.pop ### can also use bikes.select(&:working?) --- much much much nicer!!!
      fail "No working bikes" if bmx.nil?
      bmx
      bikes.delete bmx
    end

  def dock(bmx)
    fail 'Capacity full' if full?
    bikes << bmx
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
