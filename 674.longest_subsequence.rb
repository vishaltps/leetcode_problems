require 'pry'
def find_length_of_lcis(nums)
  return 0 if nums.empty?

  i = 1
  longest = current = 1

  while i < nums.length
    if nums[i - 1] < nums[i]
      current += 1
      longest = [longest, current].max
    else
      current = 1
    end
    i += 1
  end
  longest
end

# nums = [1,3,5,4,7,8,9,10]
nums = [1,3,5,4,7]

p find_length_of_lcis(nums)