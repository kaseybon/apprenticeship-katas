require 'spec_helper'
require_relative '../bowling'

describe Player do

  it 'rolls 5 and score equals 5' do
    player = Player.new
    expect(player.roll(5)).to eq(5)
  end

end