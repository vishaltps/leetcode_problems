# Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.

# Consider the number of unique elements of nums to be k, to get accepted, you need to do the following things:

# Change the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.
# Return k.

def remove_duplicates(nums)
  # i = 0
  # result = []
  # already_added = {}
  # while (i < nums.length) do
  #   if already_added.key? nums[i]
  #     result.insert(result.length, '_')
  #   else
  #     if result.include?('_')
  #       result.insert(result.index('_'), nums[i])
  #     else
  #       result << nums[i]
  #     end
  #     already_added[nums[i]] = true
  #   end
  #   i += 1
  # end
  # result.reject { | r | r == '_' }.length
  nums.uniq! && nums.size
end

# Input: nums = [1,1,2]
# Output: 2, nums = [1,2,_]
# nums = [1,1,2]
nums = [0,0,1,1,1,2,2,3,3,4]
p remove_duplicates(nums)

# Input: nums = [0,0,1,1,1,2,2,3,3,4]
# Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
# Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
# It does not matter what you leave beyond the returned k (hence they are underscores).
