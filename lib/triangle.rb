class Triangle
  # write code here
  attr_accessor :first, :second, :last

  def initialize(first, second, last)
    @first = first
    @second = second
    @last = last
  end


# also work when use variable w/o '@' symbol

  def kind
    if (@first + @second <= @last || @first + @last <= @second || @second + @last <= @first)
      raise TriangleError
    elsif @first == @second && @second == @last
      return :equilateral
    elsif @first == @second || @second == @last || @first == @last
      return :isosceles
    else
      return :scalene
    end

  end

  class TriangleError < StandardError
  end

end
