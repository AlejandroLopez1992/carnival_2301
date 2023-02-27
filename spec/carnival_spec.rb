require 'rspec'
require './lib/visitor'
require './lib/ride'
require './lib/carnival'

RSpec.describe Carnival do
  

  it '#initialize' do
  carnival = Carnival.new("4 days")

  expect(carnival).to be_a(Carnival)
  expect(carnival.duration).to eq("4 days")
  expect(carnival.rides).to eq([])
  end 
end