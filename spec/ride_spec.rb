require 'rspec'
require './lib/visitor'
require './lib/ride'

RSpec.describe Ride do

  let(:ride1) {Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })}
  let(:visitor1) {Visitor.new('Bruce', 54, '$10')}
  let(:visitor2) {Visitor.new('Tucker', 36, '$5')}
  let(:visitor3) {Visitor.new('Penny', 64, '$15')}

  it '#initialize' do
  expect(ride1).to be_a(Ride)
  expect(ride1.name).to eq("Carousel")
  expect(ride1.min_height).to eq(24)
  expect(ride1.admission_fee).to eq(1)
  expect(ride1.excitement).to eq(:gentle)
  end

  it '#board_rider tracks visitors in rider_log' do
  visitor1.add_preference(:gentle)
  visitor2.add_preference(:gentle)

  expect(ride1.board_rider(visitor1)).to eq(true)
  # expect(ride1.rider_log).to eq({visitor1})
  end

  xit '#rider_log * admission is total_revenue' do
  expect(ride1.total_revenue).to eq(0)
  visitor1.add_preference(:gentle)
  visitor2.add_preference(:gentle)

  end
  
end