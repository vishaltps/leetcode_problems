require 'set'
def two_sum(nums, target)
  result = {}

  nums.each_with_index do |n, i|
    return [i, result[target - n]] if result.key?(target - n)

    result[n] = i
  end
end


# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]
 

nums = [2,7,11,15]
target = 9
p two_sum(nums, target)

nums = [3,2,4]
target = 6
p two_sum(nums, target)
nums = [3,3] 
target = 6
p two_sum(nums, target)