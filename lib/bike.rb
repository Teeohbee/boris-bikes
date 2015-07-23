class Bike

attr_accessor :working


  def initialize
    @working = true
  end

  def report_broken
    @working = false
  end

  def working?
    if @working
     true
    else false
    end
  end

  def broken?
    if @working
     false
    else true
    end
  end


end
