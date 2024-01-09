# Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

require 'pry'
def missing_number(nums)
  # return nums[0] + 1 if nums.length == 1

  # sorted_nums = nums.sort

  # 1.upto(sorted_nums.length) do |i|
  #   return sorted_nums[i] + 1 if sorted_nums[i] + 1 != sorted_nums[i + 1]
  # end

  # sorted_nums[sorted_nums.length] + 1

  # 0.upto(nums.length) do |i|
  #   return i unless nums.include? i
  # end
  # h = Hash.new(0)
  # 0.upto(nums.length - 1) do |i|
  #   return i unless nums.include? i
  #   # h[nums[i]] += 1
  # end
  # binding.pry
  # h.find { |k, v| v.positive? }[1]
  expected_sum = nums.size*(nums.size+1)/2
    binding.pry
    actual_sum = nums.sum
    expected_sum - actual_sum
end

# nums = [3,0,1]
# nums = [0,1]
nums = [9,6,4,2,3,5,7,0,1]
# nums = [1]
# nums = [0]

p missing_number(nums)