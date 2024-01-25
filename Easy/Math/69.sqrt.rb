require 'pry'
my_sqrt(x)
return 0 if x <= 0
    left = 1
  right = x
  while(left <= right) do
    mid = (left + right) / 2
    square1 = mid**2
    # ans = mid if square1 <= x

    # if square1 == x
    #     return mid
    # elsif square1 > x
    #   right = mid - 1
    # else
    #   left = mid + 1
    # end
    if square1 <= x
        left = mid + 1
    else
        right = mid - 1
    end

  end
  right
end

# Input: x = 4
# Output: 2
# Explanation: The square root of 4 is 2, so we return 2.

x = 50
p my_sqrt(x)

# Input: x = 8
# Output: 2
# Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.
 

# x = 8
# p my_sqrt(x)