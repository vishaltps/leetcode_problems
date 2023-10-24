
# Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.


def contains_nearby_duplicate(nums, k)
  h = {}
 
  nums.each_with_index do |n,i|
    return true if (h.key? n) && ((h[n] - i).abs <= k)

    h[n] = i
  end
  # h = Hash.new

  # nums.each_with_index do |num, index|
  #   puts h[num]
  #   return true if h[num] != nil && (h[num] - index).abs <= k

  #   h[num] = index
  # end

  false
end

# Example 1:

# Input: nums = [1,2,3,1], k = 3
# Output: true
# Example 2:

# Input: nums = [1,0,1,1], k = 1
# Output: true
# Example 3:

# Input: nums = [1,2,3,1,2,3], k = 2
# Output: false

# nums = [1,2,3,1]
# k = 3
# p contains_nearby_duplicate(nums, k)
nums = [1,0,1,1]
 k = 1
 p contains_nearby_duplicate(nums, k)

#  nums = [1,2,3,1,2,3]
#  k = 2
#  p contains_nearby_duplicate(nums, k)