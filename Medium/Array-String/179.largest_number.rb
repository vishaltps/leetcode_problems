# Given a list of non-negative integers nums, arrange them such that they form the largest number and return it.

# Since the result may be very large, so you need to return a string instead of an integer.

require 'pry'
def largest_number(nums)
  # result = nums[0].to_s
  # i = 1
  # while i < nums.length
  #   result = find_max(nums[i], result).to_s
  #   i += 1
  # end
  # result
  # nums.map(&:to_s).sort { |a, b| b + a <=> a + b }.join.to_i.to_s
  for i in 0..nums.size - 1 do 
    for j in i + 1..nums.size do 
      if [nums[i], nums[j]].join.to_i < [nums[j], nums[i]].join.to_i
        nums[i], nums[j] = nums[j], nums[i]
      end
    end
  end
  nums.join.to_i.to_s
end

# def find_max(nums, val, result)
#   while 
#   [(val.to_s + result).to_i, (result + val.to_s).to_i].max
# end

# Example 1:

# Input: nums = [10,2]
# Output: "210"
# Example 2:

# Input: nums = [3,30,34,5,9]
# Output: "9534330"

# nums = [10,2]
# nums = [3,30,34,5,9]
nums = [10,2,9,39,17]
# "92103917"
# "93921710"

p largest_number(nums)