# Given an array of integers nums, return the number of good pairs.

# A pair (i, j) is called good if nums[i] == nums[j] and i < j.

require 'pry'
def num_identical_pairs(nums)
    # good_pairs = 0
    # i = 0
    # while i < nums.length
    #   j = 0
    #   while j < nums.length
    #     good_pairs += 1 if nums[i] == nums[j] && i < j
    #     j += 1
    #   end
    #   i += 1
    # end
    # good_pairs
    count = 0
    num_freq = {}
  
    nums.each_with_index do |num, index|
      # If the number is already in num_freq, increment count by its frequency
      binding.pry
      count += num_freq[num].to_i
      
      # Increment the frequency of the current number in num_freq
      num_freq[num] = num_freq[num].to_i + 1
    end
  
    count
end

# Example 1:

# Input: nums = [1,2,3,1,1,3]
# Output: 4
# Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
# Example 2:

# Input: nums = [1,1,1,1]
# Output: 6
# Explanation: Each pair in the array are good.
# Example 3:

# Input: nums = [1,2,3]
# Output: 0
# nums = [1,2,3,1,1,3]
nums = [1,1,1,1]
p num_identical_pairs(nums)
