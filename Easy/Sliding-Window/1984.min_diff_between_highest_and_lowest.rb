# You are given a 0-indexed integer array nums, where nums[i] represents the score of the ith student. You are also given an integer k.

# Pick the scores of any k students from the array so that the difference between the highest and the lowest of the k scores is minimized.

# Return the minimum possible difference.

def minimum_difference(nums, k)
  min_diff = Float::INFINITY
  nums.sort!
  # left = right = 0
  # while left < nums.size - k
  #   j = left + 1
  #   while j < nums.size - k
  #     diff = [nums[left], nums[j...k - 1]].max - [nums[left], nums[j...k - 1]].min
  #     min_diff = [min_diff, diff].min
  #     j += 1
  #   end
  #   left += 1
  # end
  # min_diff
  0.upto(nums.size - k) do |i|
    # p "#{nums[i+k-1]}, #{nums[i]}"
    # min_diff = [min_diff, nums[i+k-1] - nums[i]].min
    diff = nums[i...i+k].max - nums[i...i+k].min
    min_diff = [min_diff, diff].min
  end
  min_diff
end

# Example 1:

# Input: nums = [90], k = 1
# Output: 0
# Explanation: There is one way to pick score(s) of one student:
# - [90]. The difference between the highest and lowest score is 90 - 90 = 0.
# The minimum possible difference is 0.
# Example 2:

# Input: nums = [9,4,1,7], k = 2
# Output: 2
# Explanation: There are six ways to pick score(s) of two students:
# - [9,4,1,7]. The difference between the highest and lowest score is 9 - 4 = 5.
# - [9,4,1,7]. The difference between the highest and lowest score is 9 - 1 = 8.
# - [9,4,1,7]. The difference between the highest and lowest score is 9 - 7 = 2.
# - [9,4,1,7]. The difference between the highest and lowest score is 4 - 1 = 3.
# - [9,4,1,7]. The difference between the highest and lowest score is 7 - 4 = 3.
# - [9,4,1,7]. The difference between the highest and lowest score is 7 - 1 = 6.
# The minimum possible difference is 2.
 

# nums = [90]
# k = 1
nums = [9,4,1,7]
 k = 2
p minimum_difference(nums, k)