# Given an integer array nums and an integer k, split nums into k non-empty subarrays such that the largest sum of any subarray is minimized.

# Return the minimized largest sum of the split.

# A subarray is a contiguous part of the array.

def split_array(nums, k)
  low = nums.max
  high = nums.sum

  while low <= high
    mid = (low + high) / 2
    if find_count(nums, mid) > k
      low = mid + 1
    else
      high = mid - 1
    end
  end
  low
end

def find_count(nums, dest)
  count = 1
  current_count = i = 0
  while i < nums.size
    if current_count + nums[i] <= dest
      current_count += nums[i]
    else
      count += 1
      current_count = nums[i]
    end
    i += 1
  end
  count
end
# Example 1:

# Input: nums = [7,2,5,10,8], k = 2
# Output: 18
# Explanation: There are four ways to split nums into two subarrays.
# The best way is to split it into [7,2,5] and [10,8], where the largest sum among the two subarrays is only 18.
# Example 2:

# Input: nums = [1,2,3,4,5], k = 2
# Output: 9
# Explanation: There are four ways to split nums into two subarrays.
# The best way is to split it into [1,2,3] and [4,5], where the largest sum among the two subarrays is only 9.


nums = [7,2,5,10,8]
 k = 2
# nums = [1,2,3,4,5]
#  k = 2
# nums = [1,4,4]
# k = 3

 p split_array(nums, k)