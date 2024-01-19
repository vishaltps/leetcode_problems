# There is an integer array nums sorted in ascending order (with distinct values).

# Prior to being passed to your function, nums is possibly rotated at an unknown pivot index k (1 <= k < nums.length) such that the resulting array is [nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]] (0-indexed). For example, [0,1,2,4,5,6,7] might be rotated at pivot index 3 and become [4,5,6,7,0,1,2].

# Given the array nums after the possible rotation and an integer target, return the index of target if it is in nums, or -1 if it is not in nums.

# You must write an algorithm with O(log n) runtime complexity.

def search(nums, target)
  # i = 0
  # n = nums.length
  # while i < n
  #   return i if target == nums[i]

  #   if target <= nums[i]
  #     j = n - 1
  #     while j >= 0
  #       return j if target == nums[j]

  #       if nums[j - 1] > nums[j]
  #         n = j - 1
  #         break
  #       end
  #       j -= 1
  #     end
  #   end
    
  #   i += 1
  # end
  # -1
  left = 0
  right = nums.length - 1

  while left <= right
    mid = (left + right) / 2
    if nums[mid] == target
      return mid
    end
    
    if nums[left] <= nums[mid]
      if nums[left] <= target && target <= nums[mid]
        right = mid - 1
      else
        left = mid + 1
      end
    else
      if nums[mid] <= target && target <= nums[right]
        left = mid + 1
      else
        right = mid - 1
      end
    end
  end
  -1
end

# nums = [4,5,6,7,8, 0,1,2]
# Input: nums = [4,5,6,7,0,1,2], target = 0
# Output: 4
# Example 2:

# Input: nums = [4,5,6,7,0,1,2], target = 3
# Output: -1
# Example 3:

# Input: nums = [1], target = 0
# Output: -1


# nums = [4,5,6,7,8,0,1,2]
nums = [4,5,6,7,8,1,2,3]

target = 8
p search(nums, target)

# left, right = 0, nums.length - 1

#   while left <= right
#     mid = left + (right - left) / 2

#     return mid if nums[mid] == target

#     if nums[left] <= nums[mid]
#       if nums[left] <= target && target < nums[mid]
#         right = mid - 1
#       else
#         left = mid + 1
#       end
#     else
#       if nums[mid] < target && target <= nums[right]
#         left = mid + 1
#       else
#         right = mid - 1
#       end
#     end
#   end

#   -1
