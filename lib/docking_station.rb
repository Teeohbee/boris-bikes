require_relative "bike.rb"

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize
    @bike = []
    @capacity = DEFAULT_CAPACITY
  end

def release_bike
  fail "No bikes available" if empty?
  @bike.pop
end

def dock(bmx)
  fail "Capacity full" if full?
  @bike << bmx
end

private

attr_reader :bikes

def empty?
  @bike.empty?
end

def full?
  @bike.length >= @capacity
end

end
