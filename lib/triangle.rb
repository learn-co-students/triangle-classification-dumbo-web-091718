class Triangle
  # write code here
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if (x + y <= z || y + z <= x || x + z <= y) || (x <= 0 || y <= 0 || z <= 0)
      raise TriangleError
    elsif x == y && y == z
      return :equilateral
    elsif x != y && y != z && x != z
      return :scalene
    elsif (x == y && y != z) || (x == z && x != y) || (y == z && y != x)
      return :isosceles
    end
  end

  class TriangleError < StandardError
  end
end
