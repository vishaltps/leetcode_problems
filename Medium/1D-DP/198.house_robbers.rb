# You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

# Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.

def rob(nums)
  return 0 if nums.empty?

  n = nums.length
  return nums[0] if n == 1
  dp = Array.new(n)
  dp[0] = nums[0]
  dp[1] = [nums[0], nums[1]].max

  (2...n).each do |i|
    dp[i] = [dp[i - 1], dp[i - 2] + nums[i]].max
  end
  p dp 
  dp[n - 1]
end

# Example 1:

# Input: nums = [1,2,3,1]
# Output: 4
# Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
# Total amount you can rob = 1 + 3 = 4.
# Example 2:

# Input: nums = [2,7,9,3,1]
# Output: 12
# Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
# Total amount you can rob = 2 + 9 + 1 = 12.

nums = [1,2,3,1]
# nums = [2,1,1,2]
p rob(nums)