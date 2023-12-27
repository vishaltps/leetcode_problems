# Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

# You must write an algorithm with O(log n) runtime complexity.
require 'pry'
def search(nums, target)
  left = 0
  right = nums.length - 1
  while (left <= right) 
    mid = (left + right) / 2
    return mid if nums[mid] == target
      
    if nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  -1
end

# Input: nums = [-1,0,3,5,9,12], target = 9
# Output: 4
# Explanation: 9 exists in nums and its index is 4

nums = [-1,0,3,5,9,12]
target = 9
p search(nums, target)