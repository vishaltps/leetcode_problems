# You are given a sorted array consisting of only integers where every element appears exactly twice, except for one element which appears exactly once.

# Return the single element that appears only once.

# Your solution must run in O(log n) time and O(1) space.
def single_non_duplicate(nums)
  return nums[0] if nums.size <= 1
  return nums[0] if nums[0] != nums[1]

  n = nums.size

  return nums[n - 1] if nums[n - 1] != nums[n - 2]

  left = 1
  right = nums.size - 2

  while left <= right
    mid = (left + right) / 2
    return nums[mid] if nums[mid - 1] != nums[mid] && nums[mid + 1] != nums[mid]

    if (mid % 2 == 1 && nums[mid - 1] == nums[mid]) || (mid % 2== 0 && nums[mid] == nums[mid + 1])
      left = mid + 1
    else
      right = mid - 1
    end
  end
end

# Example 1:

# Input: nums = [1,1,2,3,3,4,4,8,8]
# Output: 2
# Example 2:

# Input: nums = [3,3,7,7,10,11,11]
# Output: 10

# nums = [1,1,2,3,3,4,4,8,8]
# nums = [3,3,7,7,10,11,11]
# nums = [1,1,2,2,3,4,4,8,8]
# nums = [1,1,2]
nums = [7,7,10,11,11,12,12]
p single_non_duplicate(nums)