# Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

# Notice that the solution set must not contain duplicate triplets.

def three_sum(nums)
  nums.sort!
  result = []
  target = 0

  for i in 0...(nums.length - 2)
    next if i.zero? && nums[i] == nums[i - 1]

      left, right = i + 1, nums.length - 1

      while left < right
        current_sum = nums[i] + nums[left] + nums[right]

        if current_sum == target
          result.push([nums[i], nums[left], nums[right]])
          while left < right && nums[left] == nums[left + 1]
            left += 1
          end
          while left < right && nums[right] == nums[right - 1]
            right -= 1
          end
          left += 1
          right -= 1
        elsif current_sum < target
          left += 1
        else
          right -= 1
        end
      end
  end
  
  result
  # first_index = 0
  # second_index = 0
  # third_index = 0
  # result = []

  # while(first_index < nums.length) do
  #   while(second_index < nums.length) do
  #     while(third_index < nums.length) do
  #       if nums[first_index] + nums[second_index] + nums[third_index] == 0
  #         result.push([nums[first_index], nums[second_index], nums[third_index]])
  #       end
  #       third_index += 1
  #     end
  #     second_index += 1
  #   end
  #   first_index += 1
  # end
  # result
#   nums = nums.sort
#   result = []
#   for i in 0..(nums.length - 2) do
#     left = 0
#     right = nums.length - 1

#     current_sum = nums[i] + nums[left + 1] + nums[right]
#     if current_sum.zero?
#       result.append([nums[i], nums[left], nums[right]])
#       while left < right && nums[left] == nums[left + 1] do
#         left += i
#       end
#       while left < right && nums[right] == nums[right - 1] do
#         right -= i
#       end

#       left += 1
#       right -= 1
#     elsif current_sum < 0
#       left += 1
#     else
#       right -= 1
#     end
#   end
#   result
end


# Example 1:

# Input: nums = [-1,0,1,2,-1,-4]
# Output: [[-1,-1,2],[-1,0,1]]
# Explanation: 
# nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
# nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
# nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
# The distinct triplets are [-1,0,1] and [-1,-1,2].
# Notice that the order of the output and the order of the triplets does not matter.
# Example 2:

# Input: nums = [0,1,1]
# Output: []
# Explanation: The only possible triplet does not sum up to 0.
# Example 3:

# Input: nums = [0,0,0]
# Output: [[0,0,0]]
# Explanation: The only possible triplet sums up to 0.

nums = [-1,0,1,2,-1,-4]
p three_sum(nums)