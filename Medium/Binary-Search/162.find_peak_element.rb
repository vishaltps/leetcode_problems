# A peak element is an element that is strictly greater than its neighbors.

# Given a 0-indexed integer array nums, find a peak element, and return its index. If the array contains multiple peaks, return the index to any of the peaks.

# You may imagine that nums[-1] = nums[n] = -∞. In other words, an element is always considered to be strictly greater than a neighbor that is outside the array.

# You must write an algorithm that runs in O(log n) time.

def find_peak_element(nums)
  find_pick_rec(nums, 0, nums.size - 1)
end

def find_pick_rec(nums, i, j)
  mid = (i + j) / 2
  valid_left = left_lower(mid, nums)
  valid_right = right_lower(mid, nums)


  if valid_left && valid_right
      return mid
  elsif valid_left
      find_pick_rec(nums, mid + 1, j)
  else
      find_pick_rec(nums, i, mid - 1)
  end
end

def left_lower(i, nums)
  return true if i <= 0

  nums[i - 1] < nums[i]
end

def right_lower(i, nums)
  return true if i == nums.size - 1

  nums[i] > nums[i + 1]
end

# Example 1:

# Input: nums = [1,2,3,1]
# Output: 2
# Explanation: 3 is a peak element and your function should return the index number 2.
# Example 2:

# Input: nums = [1,2,1,3,5,6,4]
# Output: 5
# Explanation: Your function can return either index number 1 where the peak element is 2, or index number 5 where the peak element is 6.
