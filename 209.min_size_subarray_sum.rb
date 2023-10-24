# Given an array of positive integers nums and a positive integer target, return the minimal length of a 
# subarray
#  whose sum is greater than or equal to target. If there is no such subarray, return 0 instead.

require 'pry'
def min_sub_array_len(target, nums)
  return 1 if nums.include? target

  result = []
  visited_ele = {}
  i = 0
  while i < nums.length
    result.append([nums[i], visited_ele.key(nums.find_index(target - nums[i]))]) if visited_ele.key? target - nums[i]

    visited_ele[nums[i]] = i
    i += 1
  end

  result.min_by(&:length)&.length || 0
end

# Example 1:

# Input: target = 7, nums = [2,3,1,2,4,3]
# Output: 2
# Explanation: The subarray [4,3] has the minimal length under the problem constraint.
# Example 2:

# Input: target = 4, nums = [1,4,4]
# Output: 1
# Example 3:

# Input: target = 11, nums = [1,1,1,1,1,1,1,1]
# Output: 0

# target = 7
# nums = [2,3,1,2,4,3]
# p min_sub_array_len(target, nums)

target = 11
nums = [1,2,3,4,5]

p min_sub_array_len(target, nums)