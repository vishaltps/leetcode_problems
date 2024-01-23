# There is an integer array nums sorted in non-decreasing order (not necessarily with distinct values).

# Before being passed to your function, nums is rotated at an unknown pivot index k (0 <= k < nums.length) such that the resulting array is [nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]] (0-indexed). For example, [0,1,2,4,4,4,5,6,6,7] might be rotated at pivot index 5 and become [4,5,6,6,7,0,1,2,4,4].

# Given the array nums after the rotation and an integer target, return true if target is in nums, or false if it is not in nums.

# You must decrease the overall operation steps as much as possible.


def search(nums, target)
  left = 0
  right = nums.size - 1

  while left <= right
    mid = (left + right) / 2

    return true if nums[mid] == target

    while left < mid && nums[left] == nums[mid]
      left += 1
    end

    if nums[left] <= nums[mid]
      if nums[left] <= target && target < nums[mid]
        right = mid - 1
      else
        left = mid + 1
      end
    else
      if nums[mid] < target && target <= nums[right]
        left = mid + 1
      else
        right = mid - 1
      end
    end
  end

  false
end
  # left = 0
  # right = nums.size - 1

  # while left <= right
  #   mid = (left + right) / 2

  #   return true if nums[mid] == target

  #   # Skip duplicate values on the left
  #   while left < mid && nums[left] == nums[mid]
  #     left += 1
  #   end

  #   if nums[left] <= nums[mid]
  #     if nums[left] <= target && target < nums[mid]
  #       right = mid - 1
  #     else
  #       left = mid + 1
  #     end
  #   else
  #     if nums[mid] < target && target <= nums[right]
  #       left = mid + 1
  #     else
  #       right = mid - 1
  #     end
  #   end
  # end

#   false
# end

# Example 1:

# Input: nums = [2,5,6,0,0,1,2], target = 0
# Output: true
# Example 2:

# Input: nums = [2,5,6,0,0,1,2], target = 3
# Output: false
 

# nums = [2,5,6,0,0,1,2]
# target = 12
nums = [1,0,1,1,1]
target = 0

p search(nums, target)