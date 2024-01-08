# You are given a 0-indexed array of integers nums of length n. You are initially positioned at nums[0].

# Each element nums[i] represents the maximum length of a forward jump from index i. In other words, if you are at nums[i], you can jump to any nums[i + j] where:

# 0 <= j <= nums[i] and
# i + j < n
# Return the minimum number of jumps to reach nums[n - 1]. The test cases are generated such that you can reach nums[n - 1].

require 'pry'
def jump(nums)
  # return 0 if nums.length <= 1
  max_reach = 0
  last_jump = 0
  i =0
   steps = 0


  while i < nums.length - 1
    max_reach = [max_reach, i + nums[i]].max

    if i == last_jump
      last_jump = max_reach
      steps += 1
    end
    i += 1
  end
  steps
  # return 0 if nums.length <= 1

  # steps = 0
  # maxReach = 0
  # endIdx = 0

  # (0...nums.length - 1).each do |i|
  #   maxReach = [maxReach, i + nums[i]].max

  #   if i == endIdx
  #     endIdx = maxReach
  #     steps += 1
  #   end
  # end

  # steps

end

# Example 1:

# Input: nums = [2,3,1,1,4]
# Output: 2
# Explanation: The minimum number of jumps to reach the last index is 2. Jump 1 step from index 0 to 1, then 3 steps to the last index.
# Example 2:

# Input: nums = [2,3,0,1,4]
# Output: 2

# nums = [2,3,1,1,4]
# p jump(nums)
# nums = [2,3,0,1,4]
# nums = [2,1]

nums = [2,3,1,1,4]
p jump(nums)