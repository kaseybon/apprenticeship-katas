require 'spec_helper'
require_relative '../triangles'

describe 'Triangles' do
  it 'accepts 3 sides' do
    expect(sides(3,4,5))
  end

  it 'raises an error for sides less than or equal to 0' do
    expect { sides(0,0,0) }.to raise_error("Not a triangle")
  end


end   