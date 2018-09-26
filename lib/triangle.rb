class Triangle
  attr_accessor :a, :b, :c 

  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c
  end

  class TriangleError < StandardError 
    def message
      puts "The sum of the triangle's two sides must be greater than the third side."
    end
  end

  def kind
    if (@a + @b <= @c || @a + @c <= @b || @b + @c <= @a)
      raise TriangleError
    else 
      if @a == @b && @b == @c
        :equilateral 
      elsif @a == @b || @b == @c || @a === @c
        :isosceles 
      else 
        :scalene 
      end
    end
  end
end