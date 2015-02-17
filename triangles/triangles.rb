class Triangles

   def sides(a,b,c)
    errors(a,b,c)
    equilateral(a,b,c)
  end

  def errors(a,b,c)
    triangle = [a,b,c]
    raise "Not a triangle" if triangle.any? { |x| x <= 0 } || ((a + b) <= c) || ((c + b) <= a)
  end

  def equilateral(a,b,c)
    :equilateral if a == b && b == c
  end

end