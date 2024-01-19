# Given an array a of integers of length n, find the nearest smaller number for every element such that the smaller element is on left side.If no small element present on the left print -1.
# class Solution:
#   def leftSmaller(self, n, a):
#       result = [-1]
#       min_num = a[0]
      
#       for i in range(1, len(a)):
#           min_num = min(min_num, a[i])
          
#           if a[i] > min_num:
#               closest = next((j for j in range(i - 1, -1, -1) if a[j] < a[i]), None)
#               result.append(a[closest] if closest is not None else -1)
#           else:
#               result.append(-1)
      
#       return result


def left_smaller(nums)
  result = [-1]
  min_num = nums[0]

  (1...nums.size).each do |i|
    min_num = [min_num, nums[i]].min

    if nums[i] > min_num
      
      closest = (i - 1).downto(0).find.find { |j| nums[j] < nums[i] }
      result.append(closest.nil? ? -1 : nums[closest])
    else
      result.append(-1)
    end
  end
  result
end


# Example 1:

# Input: n = 3
# a = {1, 6, 2}
# Output: -1 1 1
# Explaination: There is no number at the 
# left of 1. Smaller number than 6 and 2 is 1.
# Example 2:

# Input: n = 6
# a = {1, 5, 0, 3, 4, 5}
# Output: -1 1 -1 0 3 4
# Explaination: Upto 3 it is easy to see 
# the smaller numbers. But for 4 the smaller 
# numbers are 1, 0 and 3. But among them 3 
# is closest. Similary for 5 it is 4.

# nums = [1, 6, 2]
nums = [1, 5, 0, 8, 4, 5]
p left_smaller(nums)