def get_concatenation(nums)
  # nums.concat(nums)
  max_length = nums.length 
  i = 0
  while i < max_length
    puts i
    nums.push(nums[i])
    i += 1
  end
  nums
end

nums = [1,2,1]
p get_concatenation(nums)