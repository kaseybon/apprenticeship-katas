def sides(a,b,c)
  triangle = [a,b,c]
  raise "Not a triangle" if triangle.any? { |x| x <= 0 }

end