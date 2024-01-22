# You have a set of integers s, which originally contains all the numbers from 1 to n. Unfortunately, due to some error, one of the numbers in s got duplicated to another number in the set, which results in repetition of one number and loss of another number.

# You are given an integer array nums representing the data status of this set after the error.

# Find the number that occurs twice and the number that is missing and return them in the form of an array.

def find_error_nums(nums)
  n = nums.size
  expected_sum = (1..n).reduce(:+)
  duplicate_number = nums.tally.find{ |_k, v| v > 1}[0]
  actual_sum = nums.reduce(:+)
  missing_number = expected_sum - (actual_sum - duplicate_number)
  [duplicate_number, missing_number]

  # h = Hash.new(0)
  # a = nums.tally
  # 1.upto(nums.size) do |i|
  #   if nums.include? i
  #     h[i] += 1
  #   else
  #     h[i] = 0
  #   end
  # end
  # one  = a.find { |_k, v| v > 1 }[0]

  # two  = h.find { |_k, v| v.zero? }[0]
  # [one, two]
end

# Example 1:

# Input: nums = [1,2,2,4]
# Output: [2,3]
# Example 2:

# Input: nums = [1,1]
# Output: [1,2]
 
# nums = [1,1]

nums = [1,2,2,4]
p find_error_nums(nums)