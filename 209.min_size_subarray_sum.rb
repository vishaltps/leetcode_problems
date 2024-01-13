# Given an array of positive integers nums and a positive integer target, return the minimal length of a 
# subarray
#  whose sum is greater than or equal to target. If there is no such subarray, return 0 instead.

require 'pry'
def min_sub_array_len(target, nums)
  return 0 if nums.sum < target

  n = nums.length
  min_length = nums.length
  sum = left = right = 0

  while right < n
    sum += nums[right]
    while sum >= target
      curr_length = right - left + 1
      min_length = [curr_length, min_length].min
      sum -= nums[left]
      left += 1
    end
    right += 1
  end
  min_length == n ? 0 : min_length
#   return 1 if nums.include? target

#   first_index = 0
#   second_index = 1
#   n = nums.length
#   min_length = n
#   while second_index < n
#     current_list = [nums[first_index]]

#     i = second_index
#     binding.irb if nums[first_index] == 3
#     while i < n
#       current_list << nums[i]
#       p current_list
#       if current_list.sum >= target
#         break
#       end
#       i += 1
#     end

#     min_length = [min_length, current_list.length].min
#     first_index += 1
#     second_index += 1
#   end
#   min_length
# rescue 
#   binding.irb
end

# Example 1:

# Input: target = 7, nums = [2,3,1,2,4,3]
# Output: 2
# Explanation: The subarray [4,3] has the minimal length under the problem constraint.
# Example 2:

# Input: target = 4, nums = [1,4,4]
# Output: 1
# Example 3:

# Input: target = 11, nums = [1,1,1,1,1,1,1,1]
# Output: 0

target = 7
nums = [2,3,1,2,4,3]
p min_sub_array_len(target, nums)

target = 11
nums = [1,2,3,4,5]

# p min_sub_array_len(target, nums)