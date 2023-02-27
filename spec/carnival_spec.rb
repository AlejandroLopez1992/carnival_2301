require 'rspec'
require './lib/visitor'
require './lib/ride'
require './lib/carnival'

RSpec.describe Carnival do
  
let(:ride1) {Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })}
let(:ride2) {Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })}
let(:ride3) {Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })}

  it '#initialize' do
  carnival = Carnival.new("4 days")

  expect(carnival).to be_a(Carnival)
  expect(carnival.duration).to eq("4 days")
  expect(carnival.rides).to eq([])
  end 

  it '#add_ride method adds rides to carnival' do
  carnival = Carnival.new("4 days")
  carnival.add_ride(ride1)
  expect(carnival.rides).to eq([ride1])

  carnival.add_ride(ride2)
  expect(carnival.rides).to eq([ride1, ride2])
  end
end