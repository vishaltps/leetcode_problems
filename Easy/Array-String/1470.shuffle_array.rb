# Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].

# Return the array in the form [x1,y1,x2,y2,...,xn,yn].
require 'pry'
def shuffle(nums, n)
  sub_arrays = nums.each_slice(n).to_a
  result = []
  (sub_arrays.length - 1).times do |row|
    sub_arrays[row].length.times do |col|
      result.push(sub_arrays[row][col])
      result.push(sub_arrays[row + 1][col])
    end
  end
  result
end

# Input: nums = [2,5,1,3,4,7], n = 3
# Output: [2,3,5,4,1,7] 
# Explanation: Since x1=2, x2=5, x3=1, y1=3, y2=4, y3=7 then the answer is [2,3,5,4,1,7].
nums = [2,5,1,3,4,7]
 n = 3
 p shuffle(nums, n)