require 'bike'

describe Bike do
    it 'releases bike' do
      bike = Bike.new
    expect(bike).to respond_to(:working?)
    end
end
