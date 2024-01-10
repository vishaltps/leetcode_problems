# You are given an integer array nums and an integer k.

# In one operation, you can pick two numbers from the array whose sum equals k and remove them from the array.

# Return the maximum number of operations you can perform on the array.

def max_operations(nums, k)
  # left = operations = 0
  # right = nums.length - 1
  # nums.sort!
  # while left < right
  #   current_sum = nums[left] + nums[right]
  #   if current_sum == k
  #     operations += 1
  #     left += 1
  #     right -= 1
  #   elsif current_sum < k
  #     left += 1
  #   else
  #     right -= 1
  #   end
  # end
  # operations

  h = Hash.new(0)
  ops = 0 
  nums.each do |n|
    next if n >= k

    if h[k -n] > 0
      h[k - n] -= 1
      ops += 1
    else
      h[n] += 1
    end
  end
  ops
end

# Example 1:

# Input: nums = [1,2,3,4], k = 5
# Output: 2
# Explanation: Starting with nums = [1,2,3,4]:
# - Remove numbers 1 and 4, then nums = [2,3]
# - Remove numbers 2 and 3, then nums = []
# There are no more pairs that sum up to 5, hence a total of 2 operations.
# Example 2:

# Input: nums = [3,1,3,4,3], k = 6
# Output: 1
# Explanation: Starting with nums = [3,1,3,4,3]:
# - Remove the first two 3's, then nums = [1,4,3]
# There are no more pairs that sum up to 6, hence a total of 1 operation.

nums = [1,2,3,4]
k = 5
# nums = [3,1,3,4,3]
# k = 6
# nums = [4,4,1,3,1,3,2,2,5,5,1,5,2,1,2,3,5,4]
# k = 2

p max_operations(nums, k)