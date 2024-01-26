# Given an array of integers nums and an integer threshold, we will choose a positive integer divisor, divide all the array by it, and sum the division's result. Find the smallest divisor such that the result mentioned above is less than or equal to threshold.

# Each result of the division is rounded to the nearest integer greater than or equal to that element. (For example: 7/3 = 3 and 10/2 = 5).

# The test cases are generated so that there will be an answer.

 def smallest_divisor(nums, threshold)
  return nums.max if threshold >= nums.size

  left = 1
  right = nums.max
  
  while left <= right
    mid = left + (right - left) / 2
    if possible_divisor(nums, mid, threshold)
      right = mid - 1
    else
      left = mid + 1
    end
  end
  left
end

def possible_divisor(nums, n, threshold)
  sum = nums.reduce(0) { |sum, num| sum + (num / n.to_f).ceil * 1 }
  sum <= threshold
end

# Example 1:

# Input: nums = [1,2,5,9], threshold = 6
# Output: 5
# Explanation: We can get a sum to 17 (1+2+5+9) if the divisor is 1. 
# If the divisor is 4 we can get a sum of 7 (1+1+2+3) and if the divisor is 5 the sum will be 5 (1+1+1+2). 
# Example 2:

# Input: nums = [44,22,33,11,1], threshold = 5
# Output: 44

# nums = [1,2,5,9]
# threshold = 6
nums = [44,22,33,11,1]
 threshold = 5
 p smallest_divisor(nums, threshold)