# Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.


def rotate(nums, k)
  # (k + 1).times do |n|
  #   nums = nums.rotate
  # end
  # nums
  # nums.rotate(k + 1)
  # return nums if k.zero?

  # k.downto(1) do |n|
  #   val = nums.delete(nums[nums.length - 1])
  #   nums.insert(0, val)
  # end
  # nums

  k %= nums.length
  j = nums.length - k
  i = j - 1
  i < 0 ? nums.replace(nums[j..]) : nums.replace(nums[..j] + nums[0..i])
end
# Example 1:

# Input: nums = [1,2,3,4,5,6,7], k = 3
# Output: [5,6,7,1,2,3,4]
# Explanation:
# rotate 1 steps to the right: [7,1,2,3,4,5,6]
# rotate 2 steps to the right: [6,7,1,2,3,4,5]
# rotate 3 steps to the right: [5,6,7,1,2,3,4]


nums = [1,2,3,4,5,6,7]
k = 3
p rotate(nums, k)
