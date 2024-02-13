# Given an array nums of size n, return the majority element.

# The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.


def majority_element(nums)
  # result = nums.each_with_object(Hash.new(0)) do |num, elements|
  #   elements[num] += 1
  # end
  # result.key(result.values.max)
  count = 0
  curr_ele = nil
  nums.each do |num|
    if count == 0
      curr_ele = num
      count = 1
    elsif num == curr_ele
      count += 1
    else
      count -= 1
    end
  end
  curr_ele
  # max_size = (nums.size / 2)
  # candidate = nil
  # count = 0
  # nums.each do |num|
    
  #   if count == 0
  #     candidate = num
  #     count = 1
  #   elsif candidate == num
  #     count += 1
  #   else
  #     count -= 1
  #   end
  # end

  # candidate
end

# nums = [2,2,1,1,1,2,2]
# Output: 2

nums = [2,2,3,3,3,3,3,1,1,1,2,2] 
p majority_element(nums)