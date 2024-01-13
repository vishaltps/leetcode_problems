# Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.

def longest_ones(nums, k)
  # left = 0
  # nums.size.times do |right|
  #   k -= 1 - nums[right]
  #   if k < 0
  #     k += 1 - nums[left]
  #     left += 1
  #   end
  # end
  # nums.size - left


  left = 0
  max_length = 0
  zero_count = 0

  nums.each_with_index do |num, right|
    zero_count += 1 if num == 0

    while zero_count > k
      zero_count -= 1 if nums[left] == 0
      left += 1
    end

    max_length = [max_length, right - left + 1].max
  end

  max_length
  # while first_index < nums.length
  #   current_count = 0
  #   j = k
  #   second_index = first_index

  #   while j.positive? && second_index < nums.length
  #     j -= 1 if nums[second_index] != 1
  #     current_count += 1
  #     second_index += 1
  #   end

  #   while nums[second_index] != 0 && second_index < nums.length
  #     current_count += 1
  #     second_index += 1
  #   end

  #   max_count = [current_count, max_count].max
  #   first_index += 1
  # end
  # max_count
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

# nums = [1,1,1,0,0,0,1,1,1,1,0]
# k = 2
nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1]
k = 3
# nums = [0,0,0,1]
# k = 4

p longest_ones(nums, k)