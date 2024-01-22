# Given an unsorted integer array nums, return the smallest missing positive integer.

# You must implement an algorithm that runs in O(n) time and uses O(1) auxiliary space.

def first_missing_positive(nums)
  i = 0
  while i < nums.size - 1
    next if nums[i] <= 0
    
    if nums[i] + 1 != nums[i + 1]
      return nums[i] + 1
    end

    i += 1
  end
  (nums[i].include? 1) ? nums[-1] + 1 : 1
end
# Example 1:

# Input: nums = [1,2,0]
# Output: 3
# Explanation: The numbers in the range [1,2] are all in the array.
# Example 2:

# Input: nums = [3,4,-1,1]
# Output: 2
# Explanation: 1 is in the array but 2 is missing.
# Example 3:

# Input: nums = [7,8,9,11,12]
# Output: 1
# Explanation: The smallest positive integer 1 is missing.

# nums = [7,8,9,11,12]
nums = [3,4,-1,1]

p first_missing_positive(nums)