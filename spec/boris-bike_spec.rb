require './lib/boris-bike.rb'

describe 'DockingStation' do
  it 'Checks DockingStation exists' do
    dockingstation = DockingStation.new
    expect(dockingstation).to be_instance_of(DockingStation)
  end
end
