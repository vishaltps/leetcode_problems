# Given an integer n, return true if it is a power of two. Otherwise, return false.

# An integer n is a power of two, if there exists an integer x such that n == 2x.

def is_power_of_two(n)
  n > 0 && (n & (n - 1)) == 0
  # i = 0
  # while i < n / 2
  #   return true if 2 ** i == n

  #   i += 1
  # end
  # false
end

# Example 1:

# Input: n = 1
# Output: true
# Explanation: 20 = 1
# Example 2:

# Input: n = 16
# Output: true
# Explanation: 24 = 16
# Example 3:

# Input: n = 3
# Output: false
n = 15
p is_power_of_two(n)