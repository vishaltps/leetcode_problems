# Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.

require 'pry'
def rotate(nums, k)
  # 1.upto(k) do |_i|
  #   last_element = nums[nums.length - 1]
  #   nums.pop()
  #   nums.insert(0, last_element)  
  # end
  # nums
  puts "k 1  = #{k}"

  k %= nums.length   # to find actually how many times the array needs be rotated. k will always be less than nums.length  - 1 
  puts "k 2  = #{k}"
  j = nums.length - k   # calculating index position in array nums of the sub-array that should be moved to beginning of solution array. jth element and all elements following it till end of array should be moved to beginning of solution array
  
  i = j - 1 # calculating  index position in array nums of the sub-array  that should be moved to end of solution array.  All elements from 0 to ith element should be moved to end 
  i < 0 ? nums.replace(nums[j..])  : nums.replace(nums[j..] + nums[0..i])   # if i < 0, then jth element is at index 0 
end

# Input: nums = [1,2,3,4,5,6,7], k = 3
# Output: [5,6,7,1,2,3,4]
# Explanation:
# rotate 1 steps to the right: [7,1,2,3,4,5,6]
# rotate 2 steps to the right: [6,7,1,2,3,4,5]
# rotate 3 steps to the right: [5,6,7,1,2,3,4]

nums = [1,2,3,4,5,6,7]
k = 3
p rotate(nums, k)