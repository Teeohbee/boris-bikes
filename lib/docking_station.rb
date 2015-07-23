require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity

  def initialize(size = DEFAULT_CAPACITY)
    @bike = []
    @capacity = size
  end

  def release_bike
      bmx = bike.select{|bike| bike.working}.pop

      if bmx.nil?
          fail "No bikes available"
        else bmx
      end
        bike.delete bmx
  end

  #   def release_bike
#     bike = bikes.select{|bike| bike.working}.pop
#     if bike.nil?
#       fail 'No bikes available'
#     else
#       bikes.delete bike
#       bike  #IE WHEN THE INSTANCE VARIABLE @BIKE IS NIL
#     end
#   end

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
