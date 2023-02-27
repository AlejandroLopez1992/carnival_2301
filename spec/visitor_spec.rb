require 'rspec'
require './lib/visitor'

RSpec.describe Visitor do
  
  let(:visitor1) {Visitor.new('Bruce', 54, '$10')}
  let(:visitor2) {Visitor.new('Tucker', 36, '$5')}
  let(:visitor3) {Visitor.new('Penny', 64, '$15')}


  it '#initialize' do
  expect(visitor1).to be_a(Visitor)
  expect(visitor1.name).to eq("Bruce")
  end

end