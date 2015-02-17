require 'spec_helper'
require_relative '../triangles'

describe Triangles do
  let (:triangle) { Triangles.new }
  subject { triangle }

  it 'accepts 3 sides' do
    expect(subject.sides(3,4,5))
  end

  it 'raises an error for sides less than or equal to 0' do
    expect { subject.sides(0,0,0) }.to raise_error("Not a triangle")
  end

  it 'raises an error if the sum of two of the sides are less than or equal than the third' do
    expect { subject.sides(1,1,3) }.to raise_error("Not a triangle")
  end

  it 'to return equilateral if all sides are equal' do
    expect(subject.sides(3,3,3)).to eq(:equilateral)
  end
end   