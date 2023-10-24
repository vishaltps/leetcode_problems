# Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.

def longest_ones(nums, k)
  windows_start = 0
  windows_end = 0
  output = 0

  while windows_end < nums.length
    if nums[windows_end] == 1
      windows_end += 1
    elsif nums[windows_end].zero? && k.positive?
      windows_end += 1
      k -= 1
    elsif nums[windows_end].zero? && k.zero?
      output = [windows_end - windows_start, output].max
      k += 1 if nums[windows_start].zero?
      windows_start += 1
    end
  end
  [output, windows_end - windows_start].max
end

# Example 1:

# Input: nums = [1,1,1,0,0,0,1,1,1,1,0], k = 2
# Output: 6
# Explanation: [1,1,1,0,0,1,1,1,1,1,1]
# Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.
# Example 2:

# Input: nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], k = 3
# Output: 10
# Explanation: [0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1]
# Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.

nums = [1,1,1,0,0,0,1,1,1,1,0]
k = 2
p longest_ones(nums, k)
nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1]
k = 3
 p longest_ones(nums, k)