class Triangle

  attr_accessor :one, :two, :three
  
  def initialize(one,two,three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if one == 0 || two == 0|| three == 0
      raise TriangleError
    elsif (one + two <= three) || (two + three <= one) || (one + three <= two)
      raise TriangleError
    elsif one == two && three == two
      :equilateral
    elsif one == two || two == three || three == one
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
