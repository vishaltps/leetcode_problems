require 'pry'
def my_sqrt(x)
  left = 1
  right = x
  while(left <= right) do
    mid = (left + right) / 2
    square1, square2 = mid**2, (mid+1) ** 2
    return mid if square1 <= x && square2 > x

    if square1 > x
      right = mid
    else
      left = mid
    end
  end
end

# Input: x = 4
# Output: 2
# Explanation: The square root of 4 is 2, so we return 2.

x = 4
p my_sqrt(x)

# Input: x = 8
# Output: 2
# Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.
 

# x = 8
# p my_sqrt(x)