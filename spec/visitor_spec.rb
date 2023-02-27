require 'rspec'
require './lib/visitor'

RSpec.describe Visitor do
  
  let(:visitor1) {Visitor.new('Bruce', 54, '$10')}
  let(:visitor2) {Visitor.new('Tucker', 36, '$5')}
  let(:visitor3) {Visitor.new('Penny', 64, '$15')}


  it '#initialize' do
  expect(visitor1).to be_a(Visitor)
  expect(visitor1.name).to eq("Bruce")
  expect(visitor1.height).to eq(54)
  expect(visitor1.spending_money).to eq(10)
  expect(visitor1.preferences).to eq([])
  end

  it '#add_preference to preferance array' do
  visitor1.add_preference(:gentle)
  expect(visitor1.preferences).to eq([:gentle])
  visitor1.add_preference(:water)
  expect(visitor1.preferences).to eq([:gentle, :water])
  end

  it '#tall_enough? method verifies if visitor is tall enough' do
  expect(visitor1.tall_enough?(54)).to eq(true)
  expect(visitor2.tall_enough?(54)).to eq(false)
  expect(visitor3.tall_enough?(54)).to eq(true)
  expect(visitor1.tall_enough?)(64).to eq(false)
  end
end