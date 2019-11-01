require './lib/bike.rb'

class DockingStation

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
     @bike = bike
  end
  #
  #The method below can be replaced with attr_reader 
  # def bike
  #   @bike
  # end
 attr_reader :bike

end
