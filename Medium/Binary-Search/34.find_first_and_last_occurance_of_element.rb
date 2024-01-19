# Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.

# If target is not found in the array, return [-1, -1].

# You must write an algorithm with O(log n) runtime complexity.

def search_range(nums, target)
  left = 0
  right = nums.size - 1
  first = binary_search_first(nums, left, right, target)
  return [-1, -1] if first == -1

  last = binary_search_last(nums, left, right, target)
  [first, last]
end

def binary_search_first(nums, left, right, target)
  first = -1
  while left <= right
    mid = (left + right) / 2
    if nums[mid] == target
      first = mid
      right = mid - 1
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  first
end

def binary_search_last(nums, left, right, target)
  last = -1
  while left <= right
    mid = (left + right) / 2
    if nums[mid] == target
      last = mid
      left = mid + 1
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  last
end

# Example 1:

# Input: nums = [5,7,7,8,8,10], target = 8
# Output: [3,4]
# Example 2:

# Input: nums = [5,7,7,8,8,10], target = 6
# Output: [-1,-1]
# Example 3:

# Input: nums = [], target = 0
# Output: [-1,-1]
 

nums = [5,7,7,8,8,10]
 target = 10
p search_range(nums, target)