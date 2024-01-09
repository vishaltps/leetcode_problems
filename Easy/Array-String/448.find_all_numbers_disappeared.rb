# Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers in the range [1, n] that do not appear in nums.

require 'pry'
def find_disappeared_numbers(nums)
  result = []
  h = {}
  # (nums.min..nums.max).each do |i|
  #   result.push(i) unless nums.include? i
  # end
  # result
  nums.each do |n|
    if h[n]
      nums[nums.find_index(n)] = '_'
    else
      h[n] = true
    end
  end
  nums
end

# Example 1:

# Input: nums = [4,3,2,7,8,2,3,1]
# Output: [5,6]
# Example 2:

# Input: nums = [1,1]
# Output: [2]
 



nums = [4,3,2,7,8,2,3,1]
# nums = [1,1]


p find_disappeared_numbers(nums)