require_relative "bike.rb"

class DockingStation

def release_bike
  fail "No bikes available" unless @bike
  @bike
end

def dock(bmx)
  fail "Capacity full" if @bike
  @bike = bmx
end

end
