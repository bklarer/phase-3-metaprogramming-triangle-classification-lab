class Triangle

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end


  def kind

    is_a_triangle
    if a == b && b == c
      :equilateral
    elsif a  == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end


  private

  def is_a_triangle
    raise TriangleError unless positive_triangle_length? && triangle_inequality?
  end

  def positive_triangle_length?
    a > 0 && b > 0 && c > 0 
  end

  def triangle_inequality?
    a + b > c && a + c > b && b + c > a
  end


  class TriangleError < StandardError

  end



end
