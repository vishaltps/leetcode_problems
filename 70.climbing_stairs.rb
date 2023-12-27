# You are climbing a staircase. It takes n steps to reach the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?


def climb_stairs(n, hash = {})

  # a = [1]
  # (1..n).each do |i|
  #   one_way_count = 0
  #   two_way_count = 0

  #   one_way_count = a[i - 1] if i > 0
  #   two_way_count = a[i - 2] if i > 1
  #   a[i] = one_way_count + two_way_count
  # end
  # return a[n-1] if n < 2

  # a.last
  return 1 if n == 1
    
  return 2 if n == 2

  hash[n] ||= climb_stairs(n-1, hash) + climb_stairs(n - 2, hash)
end

# Example 1:

# Input: n = 2
# Output: 2
# Explanation: There are two ways to climb to the top.
# 1. 1 step + 1 step
# 2. 2 steps
# Example 2:

# Input: n = 3
# Output: 3
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step

n  = 3
p climb_stairs(n)