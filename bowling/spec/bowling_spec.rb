require 'spec_helper'
require_relative '../bowling-frame'
require_relative '../bowling-player'
#require_relative '../bowling-score'

describe Frame do

  it 'rolls 5 then score equals 5' do
    frame = Frame.new
    expect(frame.roll(5)).to eq(5)
  end

  it 'rolls 10 then score equals X' do
    frame = Frame.new
    expect(frame.roll(10)).to eq('X')
  end

  it 'rolls 3 and 4 then score equals 7' do
    frame = Frame.new
    expect(frame.roll(3,4)).to eq(7)
  end

  it 'rolls 5 and 5 then score equals /' do
    frame = Frame.new
    expect(frame.roll(5,5)).to eq('/')
  end

end

describe Player do

  it 'stores a turn equaling 6 to game array' do
    player = Player.new
    expect(player.turn(6)).to eq([6])
  end

  it 'stores two turns equaling 6 and 10 to game array' do
    player = Player.new
    expect(player.turn(6) && player.turn(10)).to eq([6, 'X'])
  end

end

# describe Score do

#   # Thought I was ready for this but I'm not...

# end