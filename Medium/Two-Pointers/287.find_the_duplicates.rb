# Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.

# There is only one repeated number in nums, return this repeated number.

# You must solve the problem without modifying the array nums and uses only constant extra space.


def find_duplicate(nums)
  slow, fast = 0, 0
  while true do
    slow = nums[slow]
    fast = nums[nums[fast]]
    break if slow == fast
  end
  slow2 = 0
  while slow != slow2 do
    slow = nums[slow]
    slow2 = nums[slow2]
  end
  slow
end

# Example 1:

# Input: nums = [1,3,4,2,2]
# Output: 2
# Example 2:

# Input: nums = [3,1,3,4,2]
# Output: 3
nums = [1,3,4,2,2]
 p find_duplicate(nums)