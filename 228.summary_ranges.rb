# You are given a sorted unique integer array nums.

# A range [a,b] is the set of all integers from a to b (inclusive).

# Return the smallest sorted list of ranges that cover all the numbers in the array exactly. That is, each element of nums is covered by exactly one of the ranges, and there is no integer x such that x is in one of the ranges but not in nums.

# Each range [a,b] in the list should be output as:

# "a->b" if a != b
# "a" if a == b

require 'pry'

def summary_ranges(nums)
  return if nums.empty?

  result = []
  i = 0
  current_range = []
  while i < nums.length
    
    if current_range.empty?
      current_range << nums[i]
    else
      if nums[i] - current_range.last > 1
        result << stringfy(current_range)
        current_range = [nums[i]]
      else
        current_range << nums[i]
      end
    end
    i += 1
  end

  result << stringfy(current_range)
  result
end

def stringfy(range)
  return range[0].to_s if range.length == 1
  
  "#{range.first}->#{range.last}"
end


nums = [0,1,2,4,5,7]
p summary_ranges(nums)