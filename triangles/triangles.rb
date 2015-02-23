def sides(a,b,c)
  errors = TriangleErrors.new
  equilateral = EquilateralTriangles.new
  isosceles = IsoscelesTriangles.new
  scalene = ScaleneTriangles.new

  #[errors, equilateral, isosceles, scalene].first { |checking| checking.is? }
  #[errors, equilateral, isosceles, scalene].first(&:is?).type
  
  #### for checking in [errors, equilateral, isosceles, scalene]
    
  [errors, equilateral, isosceles, scalene].each do |checking|
    return checking.type if checking.is?(a,b,c)
  end

end
class TriangleErrors
  
  def is?(a,b,c)
    triangle = [a,b,c]
    triangle.sort.any? { |x| x <= 0 } || ((a + b) <= c) || ((c + b) <= a)
  end
  def type
    raise "Not a triangle" 
  end
end

class EquilateralTriangles
  def is?(a,b,c)
    a == b && b == c
  end
  def type
    :equilateral
  end
end

class IsoscelesTriangles
  def is?(a,b,c)
    (a == b) || (a == c) || (b == c)
  end
  def type
    :isosceles
  end
end

class ScaleneTriangles
  def is?(a,b,c)
    true
  end
  def type
    :scalene
  end
end