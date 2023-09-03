# Input: nums = [1,2,3,4]
# Output: [1,3,6,10]
# Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].


def running_sums(nums)
  i = 1
  result = [nums[0]]
  while i < nums.length do
    result << (nums[i] + result[i - 1])
    i += 1
  end
  result
end

nums = [1,2,3,4]
p running_sums(nums) 
