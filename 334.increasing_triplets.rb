# Given an integer array nums, return true if there exists a triple of indices (i, j, k) such that i < j < k and nums[i] < nums[j] < nums[k]. If no such indices exists, return false.


def increasing_triplet(nums)
  first = second = Float::INFINITY

  nums.each do |num|
    if num <= first
      first = num
    elsif num <= second
      second = num
    else
      return true
    end
  end

  false
end

# nums = [1,2,3,4,5]
# nums = [5,4,3,2,1]
# nums = [2,1,5,0,4,6]
nums = [20,100,10,12,5,13]



p increasing_triplet(nums)