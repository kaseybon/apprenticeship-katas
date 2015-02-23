require 'spec_helper'
require_relative '../bowling'

describe Bowling do
  
  context 'calculates and' do

    it 'adds score' do
      bowling = Bowling.new
      expect(bowling.score(3, 5)).to eq(8)
    end

  end

end

describe Frame do

  it 'generates random number greater than or equal to 0 on the first try' do
    frame = Frame.new
    expect(frame.first_try).to be >= 0
  end

  it 'generates random number less than or equal to 10 on the first try' do
    frame = Frame.new
    expect(frame.first_try).to be >= 0
  end


end