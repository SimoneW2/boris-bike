require './lib/bike.rb'

class DockingStation
  def release_bike
    Bike.new
  end

  def dock(bike)
     @bike = bike
  end

  def bike()

  end
end
