# Given an array nums with n integers, your task is to check if it could become non-decreasing by modifying at most one element.

# We define an array is non-decreasing if nums[i] <= nums[i + 1] holds for every i (0-based) such that (0 <= i <= n - 2).
require 'pry'
def check_possibility(nums)
  return true if nums.length <= 2

  count = nums[0] > nums[1] ? 1 : 0
  i = 1
  while i < nums.length - 1
    if nums[i] > nums[i + 1]
      nums[i + 1] = nums[i] if nums[i - 1] > nums[i + 1]
      return false if count >= 1

      count += 1
    end
    i += 1
  end

  true
end


# Example 1:

# Input: nums = [4,2,3]
# Output: true
# Explanation: You could modify the first 4 to 1 to get a non-decreasing array.
# Example 2:

# Input: nums = [4,2,1]
# Output: false
# Explanation: You cannot get a non-decreasing array by modifying at most one element.

# nums = [4,2,3]
nums = [4,2,1]
# nums = [3,4,2,3]
# nums = [-1,4,2,3]


p check_possibility(nums)