require 'spec_helper'
require_relative '../triangles'

describe 'Triangles' do

  it 'accepts 3 sides' do
    expect(sides(3,4,5))
  end

  it 'raises an error for sides less than or equal to 0' do
    expect { sides(0,0,0) }.to raise_error("Not a triangle")
  end

  it 'raises an error if the sum of two of the sides are less than or equal than the third' do
    expect { sides(1,1,3) }.to raise_error("Not a triangle")
  end

  it 'returns equilateral if all sides are equal' do
    expect(sides(3,3,3)).to eq(:equilateral)
  end

  it 'returns isosceles if only two sides are equal' do
    expect(sides(3,4,4)).to eq(:isosceles)
  end

  it 'returns scalene if only no sides are equal and is still a triangle' do
    expect(sides(3,4,5)).to eq(:scalene)
  end

end