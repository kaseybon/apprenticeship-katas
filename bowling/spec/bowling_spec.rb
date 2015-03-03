require 'spec_helper'
require_relative '../bowling'

describe Player do

  it 'rolls 5 and score equals 5' do
    player = Player.new
    expect(player.roll(5)).to eq(5)
  end

  it 'rolls 10 and score equals X' do
    player = Player.new
    expect(player.roll(10)).to eq('X')
  end

end