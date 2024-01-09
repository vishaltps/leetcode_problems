require 'pry'
def search(nums, target)
  left = 0
  right = nums.length - 1
  while(left <= right) do
    mid = nums[(left + right) / 2]
    if (mid == target) 
      return nums.index(mid)
    elsif mid < target
      left += 1
    else
      right -= 1
    end
  end
  return -1
end

# nums = [-1,0,3,5,9,12]
nums = [5]
target = 5

p search(nums, target)