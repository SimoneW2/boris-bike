require './lib/boris-bike.rb'

describe DockingStation do
  it 'Checks DockingStation exists' do
    dockingstation = DockingStation.new
    expect(dockingstation).to be_instance_of(DockingStation)
  end

  it 'responds to release bike' do
    dockingstation = DockingStation.new
    expect(dockingstation).to respond_to(:release_bike)
  end

  it 'is the bike working' do
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end

  it 'gets docking station to release bike' do
    dockingstation = DockingStation.new
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'retrieves bike' do
    dockingstation = DockingStation.new
    expect(dockingstation).to respond_to(:dock).with(1).argument
    end

   it 'expected to respond to bike' do
    dockingstation = DockingStation.new
     expect(dockingstation).to respond_to(:bike)
   end

   it 'returns bikes' do
   bike = Bike.new
   subject.dock(bike)
  expect(subject.bike).to eq bike
  end

  it 'raises an error when there are no bikes available' do
  expect { subject.release_bike }.to raise_error 'No bikes available'
end
end
