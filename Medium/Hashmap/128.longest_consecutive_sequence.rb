# Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.

# You must write an algorithm that runs in O(n) time.
require 'pry'
def longest_consecutive(nums)
  # sorted_nums = nums.sort
  # longest_consecutive = 0
  # result = Hash.new
  # count = 1
  
  # sorted_nums.length.times do |i|
  #   if (sorted_nums[i] + 1) == sorted_nums[i + 1]
  #     result[count] ||= []
  #     result[count] << sorted_nums[i]
  #   else
  #     result[count] ||= []
  #     result[count] << sorted_nums[i]
  #     count += 1
  #   end
  # end

  # result.values.sort_by { |a| a.length }.last.length
  nums_set = nums.to_set
  longest_length = 0
  
  nums_set.each do |n|
    unless nums_set.include?(n - 1)
      length = 1
      while nums_set.include?(n + length)
        length += 1
      end

      longest_length = length if length > longest_length
    end
  end

  longest_length

end

# Example 1:

# Input: nums = [100,4,200,1,3,2]
# Output: 4
# Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
# Example 2:

# Input: nums = [0,3,7,2,5,8,4,6,0,1]
# Output: 9


nums = [100,4,200,1,3,2]
# nums = [0,3,7,2,5,8,4,6,0,1]

p longest_consecutive(nums)