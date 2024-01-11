# Given an array nums of n integers, return an array of all the unique quadruplets [nums[a], nums[b], nums[c], nums[d]] such that:

# 0 <= a, b, c, d < n
# a, b, c, and d are distinct.
# nums[a] + nums[b] + nums[c] + nums[d] == target
# You may return the answer in any order.
def four_sum(nums, target)
  nums.sort!
  result = Set.new
  nums.each_with_index do |num, i|
    new_target = target - num
    three_sum(nums[i+1...nums.length], num, new_target, result)
  end
  result.to_a
end

def three_sum(arr, first_val, target, result)
  i = 0
  while i < arr.length
    
    new_target = target - arr[i]
    two_sum(arr[i+1...arr.length], arr[i], first_val, new_target, result)
    i += 1
  end
end

def two_sum(nums, second_val, first_val, target, result)
  left = 0
  right = nums.length - 1

  while left < right
    sum = nums[left] + nums[right]
    if sum == target
      result << [nums[left], nums[right], first_val, second_val]
      left += 1
    elsif sum < target
      left += 1
    else
      right -= 1
    end
  end
end
# def four_sum(nums, target)
#   left = 0
#   right = nums.length - 1
#   nums.sort!
#   result = Set.new
#   while left < right
#     i = left + 1
#     j = right - 1
#     cs = nums[left] + nums[right]

#     while i < j
#       current_sum = cs + nums[i] + nums[j]
#       if current_sum == target
#         result << [nums[left], nums[right], nums[i], nums[j]]
#         i += 1
#         j -= 1
#       elsif current_sum < target
#         i += 1
#       else
#         j -= 1
#       end
#     end
#     cs < target ? left += 1 : right -= 1
#   end
#   result.to_a
# end

# Example 1:

# Input: nums = [1,0,-1,0,-2,2], target = 0
# Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
# Example 2:

# Input: nums = [2,2,2,2,2], target = 8
# Output: [[2,2,2,2]]
# nums = [1,0,-1,0,-2,2]
# target = 0
nums = [-3,-2,-1,0,0,1,2,3]
target = 0
p four_sum(nums, target)

# [[-3,3,-2,2],[-3,3,-1,1],[-3,3,0,0],[-3,2,0,1],[-2,2,-1,1],[-2,2,0,0],[-1,1,0,0]]
# [[-3,-2,2,3],[-3,-1,1,3],[-3,0,0,3],[-3,0,1,2],[-2,-1,0,3],[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
# [[-3, 3, -2, 2],[-3, 3, -1, 1],[-3, 3, 0, 0],[-3, 2, 0, 1],[-2, 2, -1, 1],[-2, 2, 0, 0],[-1, 1, 0, 0]]
