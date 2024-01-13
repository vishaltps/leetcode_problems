# Given a binary array nums, you should delete one element from it.

# Return the size of the longest non-empty subarray containing only 1's in the resulting array. Return 0 if there is no such subarray.

def longest_subarray(nums)
  left = right = count = 0
  while right < nums.size
    count += 1 if nums[right].zero?

    if count > 1
      count -= 1 if nums[left].zero?
      left += 1
    end
    right += 1
  end
  (right - left) - 1
  # left = 0
  # right = 0
  # count = 0

  # while right < nums.size
  #   count += 1 if nums[right] == 0

  #   if count > 1
  #     count -= 1 if nums[left] == 0

  #     left += 1
  #   end

  #   right += 1
  # end

  # (right - left) - 1
end

# Example 1:

# Input: nums = [1,1,0,1]
# Output: 3
# Explanation: After deleting the number in position 2, [1,1,1] contains 3 numbers with value of 1's.
# Example 2:

# Input: nums = [0,1,1,1,0,1,1,0,1]
# Output: 5
# Explanation: After deleting the number in position 4, [0,1,1,1,1,1,0,1] longest subarray with value of 1's is [1,1,1,1,1].
# Example 3:

# Input: nums = [1,1,1]
# Output: 2
# Explanation: You must delete one element.
 

nums = [1,1,0,1]
# nums = [0,1,1,1,0,1,1,0,1]
p longest_subarray(nums)