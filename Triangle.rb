=begin
  Calvin Ip
  5/8/17
  Triangle.rb
  Finds the area and perimeter of a triangle and describes what type it is.
=end

class Triangle
  def initialize(a, b, c)
    @a,@b,@c = a,b,c
  end

  # Creates getters and setters
  attr_accessor :a, :b, :c
end

class Triangle
  def perimeter
    return @a + @b + @c if self.test != 5
  end

  def area
    x = self.perimeter/2
    return Math.sqrt(x*(x-@a)*(x-@b)*(x-@c)) if self.test != 5
  end

  def test
    if @a.to_i != 0 && @b.to_i != 0 && @c.to_i != 0
      if @a == @b && @b == @c
        return 1
      elsif @a**2 + @b**2 == @c**2 || @a**2 + @c**2 == @b**2 || @a**2 == @b**2 + @c**2
        return 4
      elsif a == b || a == c || b == c
        return 2
      elsif (@a == @b && @a != @c) || (@b == @c && @a != @c) || (@a == @c && @b != @c)
        return 3
      end
    else
      return 5
    end
  end

  def type
    type = self.test
    if type == 1
      return "This is an equilateral triangle"
    elsif type == 2
      return "This is a scalene triangle"
    elsif type == 3
      return "This is a isoceles triangle"
    elsif type == 4
     return "This is a right triangle"
    elsif type == 5
      return "This is not a triangle"
    end
  end
end

# Testing
t1 = Triangle.new(4,4,4)
print "t1: a = #{t1.a}, b = #{t1.b}, c = #{t1.c} \n"
puts "perimiter: #{t1.perimeter}, area: #{t1.area}"
puts t1.type; puts

t2 = Triangle.new(5,3,5)
print "t2: a = #{t2.a}, b = #{t2.b}, c = #{t2.c}\n"
puts "perimiter: #{t2.perimeter}, area: #{t2.area}"
puts t2.type; puts

t3 = Triangle.new(1,2,3)
print "t3: a = #{t3.a}, b = #{t3.b}, c = #{t3.c}\n"
puts "perimiter: #{t3.perimeter}, area: #{t3.area}"
puts t3.type; puts

t4 = Triangle.new(3,4,5)
print "t4: a = #{t4.a}, b = #{t4.b}, c = #{t4.c}\n"
puts "perimiter: #{t4.perimeter}, area: #{t4.area}"
puts t4.type; puts

t5 = Triangle.new("g",4,"C")
print "t5: a = #{t5.a}, b = #{t5.b}, c = #{t5.c}\n"
puts t5.type; puts
