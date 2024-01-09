# Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

# You must write an algorithm with O(log n) runtime complexity.

require 'pry'
def search_insert(nums, target)
  left = 0 
  right = nums.length - 1

  while left <= right
    mid = (left + right) / 2
    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      left += 1
    else
      right -= 1
    end
  end
  left
end


# Example 1:

# Input: nums = [1,3,5,6], target = 5
# Output: 2
# Example 2:

# Input: nums = [1,3,5,6], target = 2
# Output: 1
# Example 3:

# Input: nums = [1,3,5,6], target = 7
# Output: 4
nums = [1,3,5,6]
target = 7

nums = [1,3,5,6]
target = 5
# nums = [1,3,5,6]
# target = 2

p search_insert(nums, target)
