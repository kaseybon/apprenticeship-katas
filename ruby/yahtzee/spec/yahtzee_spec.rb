require 'spec_helper'
require_relative '../yahtzee'

describe 'Calculate' do

  it 'adds die' do
    expect(calculate([1,1,1,1,1])).to eq(5)
  end

  it 'adds aces' do
    expect(calculate([1,1,2,2,3])).to eq(2)
  end
  
end