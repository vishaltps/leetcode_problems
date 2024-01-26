# You are given an integer array bloomDay, an integer m and an integer k.

# You want to make m bouquets. To make a bouquet, you need to use k adjacent flowers from the garden.

# The garden consists of n flowers, the ith flower will bloom in the bloomDay[i] and then can be used in exactly one bouquet.

# Return the minimum number of days you need to wait to be able to make m bouquets from the garden. If it is impossible to make m bouquets return -1.

def min_days(bloom_day, m, k)
  return -1 if bloom_day.size < m * k

  left = bloom_day.min
  right = bloom_day.max
  while left <= right
    mid = left + (right - left) / 2
    if possible(bloom_day, mid, m , k)
      right = mid - 1
    else
      left = mid + 1
    end
  end
  left
end

def possible(bloom_day, day, m , k)
  count = no_bloom = 0
  bloom_day.each do |bd|
    if bd <= day
      count += 1
    else
      no_bloom += count / k
      count = 0
    end
  end
  no_bloom += count / k
  no_bloom >= m
end

# Example 1:

# Input: bloomDay = [1,10,3,10,2], m = 3, k = 1
# Output: 3
# Explanation: Let us see what happened in the first three days. x means flower bloomed and _ means flower did not bloom in the garden.
# We need 3 bouquets each should contain 1 flower.
# After day 1: [x, _, _, _, _]   // we can only make one bouquet.
# After day 2: [x, _, _, _, x]   // we can only make two bouquets.
# After day 3: [x, _, x, _, x]   // we can make 3 bouquets. The answer is 3.
# Example 2:

# Input: bloomDay = [1,10,3,10,2], m = 3, k = 2
# Output: -1
# Explanation: We need 3 bouquets each has 2 flowers, that means we need 6 flowers. We only have 5 flowers so it is impossible to get the needed bouquets and we return -1.
# Example 3:

# Input: bloomDay = [7,7,7,7,12,7,7], m = 2, k = 3
# Output: 12
# Explanation: We need 2 bouquets each should have 3 flowers.
# Here is the garden after the 7 and 12 days:
# After day 7: [x, x, x, x, _, x, x]
# We can make one bouquet of the first three flowers that bloomed. We cannot make another bouquet from the last three flowers that bloomed because they are not adjacent.
# After day 12: [x, x, x, x, x, x, x]
# It is obvious that we can make two bouquets in different ways.
 
# 7, 8 ,9 ,10, 11, 12

bloom_day = [1,10,3,10,2]
 m = 3
  k = 1
# bloom_day = [1,10,3,10,2]
#  m = 3
#   k = 2
  p min_days(bloom_day, m, k)