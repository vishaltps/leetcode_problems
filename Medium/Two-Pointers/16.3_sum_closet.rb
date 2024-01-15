def three_sum_closest(nums, target)
  nums.sort!
  n = nums.length
  i = 0
  sum = []
  closest_sum = nil
  while i < nums.length
    left, right = i + 1, n - 1 
    while (left < right)
      current_sum = nums[i] + nums[left] + nums[right]

      if current_sum == target
        return target
      elsif current_sum <= target
        left += 1
      else
        right -= 1
      end

      if closest_sum.nil? || (target - current_sum).abs < (target - closest_sum).abs
        closest_sum = current_sum
      end
    end
    i += 1
  end
  closest_sum
end


# nums = [0,1,2]
nums = [-1,2,1,-4]
target = 1
# target = 0
p three_sum_closest(nums, target)