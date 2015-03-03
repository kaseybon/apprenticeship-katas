require 'spec_helper'
require_relative '../bowling-frame'
require_relative '../bowling-score'

describe Frame do

  it 'rolls 5 then score equals 5' do
    player = Frame.new
    expect(player.roll(5)).to eq(5)
  end

  it 'rolls 10 then score equals X' do
    player = Frame.new
    expect(player.roll(10)).to eq('X')
  end

  it 'rolls 3 and 4 then score equals 7' do
    player = Frame.new
    expect(player.roll(3,4)).to eq(7)
  end

  it 'rolls 5 and 5 then score equals /' do
    player = Frame.new
    expect(player.roll(5,5)).to eq('/')
  end

end