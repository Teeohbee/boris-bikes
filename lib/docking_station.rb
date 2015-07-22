require_relative "bike.rb"

class DockingStation
  def initialize
    @bike = []
  end

def release_bike
  fail "No bikes available" if @bike.empty?
  @bike.pop
end

def dock(bmx)
  fail "Capacity full" if @bike.length >= 20
  @bike << bmx
end

end
