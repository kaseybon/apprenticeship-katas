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