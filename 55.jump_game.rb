# You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.

# Return true if you can reach the last index, or false otherwise.

# def can_jump(nums)
#   return true if nums.length < 2
#   i = 0
#   start_point = nums[0]
#   can_jump = true
  
#   while (i < (nums.length - 1)) do
#     # return false if nums[i] == 0
#     next if nums[i] > start_point 
#     if nums[i] < nums[i+1]
#       can_jump = true
#     else
#       can_jump = false
#     end
#     i += 1
#   end
#   can_jump
# end

def can_jump(nums)
  last_index = nums.length - 1
  max_jump = 0

  (0..last_index).each do |i|
    max_jump = [max_jump, i + nums[i]].max

    if max_jump >= last_index
      return true
    elsif max_jump <= i && nums[i] == 0
      return false
    end
  end
  false
end

# Example 1:

# Input: nums = [2,3,1,1,4]
# Output: true
# Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.
# Example 2:

nums = [2,3,1,1,4]
p can_jump(nums)
nums = [3,2,1,0,4]
p can_jump(nums)
# Input: nums = [3,2,1,0,4]
# Output: false
# Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.
