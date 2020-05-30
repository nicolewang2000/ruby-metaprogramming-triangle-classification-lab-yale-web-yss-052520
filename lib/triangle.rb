class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  
  def kind
    if @side1 == 0 || @side2 == 0 || @side3 == 0 || @side1 >= @side2 + @side3 || @side2 >= @side3 + @side1 || @side3 >= @side1 + @side2
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end 
  end 
 
  class TriangleError < StandardError
  end
end

# def validate_triangle
#   real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#   [a, b, c].each do |side|
#     real_triangle << false if side <= 0 
#   raise TriangleError if real_triangle.include?(false)
#   end
# end