# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(*args)
	args.sort!
	raise TriangleError if args[0] + args[1] <= args[2] || args[0] <= 0
	[nil, :equilateral, :isosceles, :scalene][args.uniq.size]
end


# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError

end


# 1 no negative's or 0's  ( <=0 )
# all side's can be even in length 