class Triangle
  attr_reader :side_1, :side_2, :side_3


  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if (@side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0)
      class TriangleError < StandardError
      end
    elsif @side_1 + @side_2 < @side_3 ||  @side_2 + @side_3 < @side_1 || @side_3 + @side_1 < @side_2
      class TriangleError < StandardError
      end
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      :scalene
    elsif @side_1 == @side_2 && @side_1 == @side_3
      :equilateral
    else
      :isosceles
    end
  end

end
