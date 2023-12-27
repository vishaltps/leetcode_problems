# Input: nums = [1,2,3,4,5,6,7], k = 3
# Output: [5,6,7,1,2,3,4]
# Explanation:
# rotate 1 steps to the right: [7,1,2,3,4,5,6]
# rotate 2 steps to the right: [6,7,1,2,3,4,5]
# rotate 3 steps to the right: [5,6,7,1,2,3,4]

require 'pry'
def rotate(nums, k)
  k %= nums.length
  j = nums.length - k
  i = j - 1

  i < 0 ? nums.replace(nums[j..]) : nums.replace(nums[j..] + nums[0..i])
end

nums = [1,2,3,4,5,6,7]
 k = 3
 p rotate(nums, k)