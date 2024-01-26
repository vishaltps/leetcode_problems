# Koko loves to eat bananas. There are n piles of bananas, the ith pile has piles[i] bananas. The guards have gone and will come back in h hours.

# Koko can decide her bananas-per-hour eating speed of k. Each hour, she chooses some pile of bananas and eats k bananas from that pile. If the pile has less than k bananas, she eats all of them instead and will not eat any more bananas during this hour.

# Koko likes to eat slowly but still wants to finish eating all the bananas before the guards return.

# Return the minimum integer k such that she can eat all the bananas within h hours.

 
require 'pry'
def min_eating_speed(piles, h)
  return piles.size if piles.size == h

  left = 1
  right = piles.max
  while left <= right
    mid = left + (right - left) / 2

    no_of_hours = get_no_of_hours(piles, mid)
    if no_of_hours <= h
      right = mid - 1
    else
      left = mid + 1
    end
  end
  left
end

def get_no_of_hours(piles, n)
  total_hours = 0
  piles.each do |pile|
    total_hours += (pile / n.to_f).ceil
  end
  total_hours
end






































#   def min_eating_speed(piles, h) 
#   return piles.max if piles.length == h

#   low = 1
#   high = piles.max
#   result = high

#   while low <= high
#     mid = (low + high) / 2
#     hours = 0
#     piles.each do |p|
#       hours += (p / mid.to_f).ceil
#     end
#     if hours <= h
#       result = mid if mid < result
#       high = mid - 1
#     else
#       low = mid + 1
#     end
#   end
#   result
# end

# Example 1:

# Input: piles = [3,6,7,11], h = 8
# Output: 4
# Example 2:

# Input: piles = [30,11,23,4,20], h = 5
# Output: 30
# Example 3:

# Input: piles = [30,11,23,4,20], h = 6
# Output: 23
 

# piles = [3,6,7,11]
#  h = 8
piles = [30,11,23,4,20]
 h = 6
p min_eating_speed(piles, h)