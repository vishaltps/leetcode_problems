# Given two integers left and right that represent the range [left, right], return the bitwise AND of all numbers in this range, inclusive.

def range_bitwise_and(left, right)
  shift = 0
  while left < right
    left >>= 1
    right >>= 1
    shift += 1
  end
  left << shift
end

# Example 1:

# Input: left = 5, right = 7
# Output: 4
# Example 2:

# Input: left = 0, right = 0
# Output: 0
# Example 3:

# Input: left = 1, right = 2147483647
# Output: 0
