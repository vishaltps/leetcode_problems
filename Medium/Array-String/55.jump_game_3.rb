require 'pry'
def can_jump(nums)
  last_index = nums.length - 1
  max_jump = 0
  i = 0
  while i < nums.length - 1
    max_jump = [max_jump, i + nums[i]].max

    if max_jump >= last_index
      return true
    elsif max_jump <= i && nums[i].zero?
      return false
    end

    i += 1
  end
  
  false
end

# nums = [2,3,1,1,4]
nums = [2,0]

p can_jump(nums)