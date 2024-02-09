# Given a set of distinct positive integers nums, return the largest subset answer such that every pair (answer[i], answer[j]) of elements in this subset satisfies:

# answer[i] % answer[j] == 0, or
# answer[j] % answer[i] == 0
# If there are multiple solutions, return any of them.# 
# def largest_divisible_subset(nums)
#   return [] if nums.empty?

#   result = []
#   dp(nums.sort, 0, [], result)
#   result
# end

# def dp(nums, idx, current, result)
#   if idx == nums.size
#     if current.size > result.size
#       result.replace(current)
#     end
#     return
#   end

#   if current.empty? || nums[idx] % current.last == 0
#     current.push(nums[idx])
#     dp(nums, idx + 1, current, result)
#     current.pop
#   end
#   dp(nums, idx + 1, current, result)
# end

def largest_divisible_subset(nums)
  return [] if nums.empty?

  nums.sort!
  dp = Array.new(nums.size) { [] }
  dp[0] = [nums[0]]

  result = dp[0]

  (1...nums.size).each do |i|
    dp[i] = [nums[i]]

    (0...i).each do |j|
      if nums[i] % nums[j] == 0 && dp[i].size < dp[j].size + 1
        dp[i] = dp[j] + [nums[i]]
      end
    end

    result = dp[i] if dp[i].size > result.size
  end

  result
end

# Example 1:

# Input: nums = [1,2,3]
# Output: [1,2]
# Explanation: [1,3] is also accepted.
# Example 2:

# Input: nums = [1,2,4,8]
# Output: [1,2,4,8]

nums = [1,2,4,8]
# nums = [1,2,3]
p largest_divisible_subset(nums)