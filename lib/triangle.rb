class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3
  @@all = []

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @@all << self
  end

  def self.all
    @@all
  end

  def kind
    if side_1 <= 0 || side_2 <= 0 || side_3 <= 0
      raise TriangleError
    elsif side_1 + side_2 <= side_3 || side_2 + side_3 <= side_1 || side_1 + side_3 <= side_2
      raise TriangleError
    elsif side_1 == side_2 && side_1 == side_3 && side_1
      return :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a triangle."
    end
  end
end
