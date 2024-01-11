# Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# Note that you must do this in-place without making a copy of the array.


def move_zeroes(nums)
  zero_count = nums.count(0)
  nums.delete(0)
  nums.fill(0, nums.length, zero_count)
  # i = 0
  # n = nums.length
  # while i < n
  #   if nums[i].zero?
  #     nums[nums.length] = 0
  #     nums[i] = 't'
  #   end
  #   i += 1
  # end
  # nums.delete('t')
  # nums
end

# Example 1:

# Input: nums = [0,1,0,3,12]
# Output: [1,3,12,0,0]
# Example 2:

# Input: nums = [0]
# Output: [0]
 
# nums = [0,1,0,3,12]
# nums = [0]
nums = [0,0,1]


p move_zeroes(nums)