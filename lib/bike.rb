class Bike

attr_reader :working

  def initialize
    @working = true
  end

  def report_broken
    @working = false
  end

  def working?
    @working
  end

  def broken?
    !working?
  end

### ATTR_reader is allowing access to the instance variables, not the class. The reason we need it here is that the working? method actually calling the instance variable @working ----> there is no access to this variable without the attr_reader
##ATTR_reader doesnt just allow access to the instance variables. It actually allows manipulation of the values of the object (jeuct not change of the object itself). Accessor allows you to change the object to anything you want. But reader can be used to assign values and manipulate your variable eg an array

end
