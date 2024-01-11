
# Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must be unique and you may return the result in any order.


def intersection(nums1, nums2)
  # min_len = [nums1.length, nums2.length].min
  # h = {}
  # result = Set.new
  # i = 0
  # min_ary = nums1.length < nums2.length ? nums1 : nums2
  # while i < min_len
  #   result << min_ary[i] if (nums1.include? min_ary[i]) && (nums2.include? min_ary[i])
  #   i += 1
  # end
  # result.to_a
  h = {}
  result = Set.new
  min_len = [nums1.length, nums2.length].min
  i = 0
  while i < min_len
    h[nums1[i]] = true
    i += 1
  end
  i = 0
  while i < min_len
    result << nums2[i] if h[nums2[i]]
    i += 1
  end

  result.to_a
end

# Example 1:

# Input: nums1 = [1,2,2,1], nums2 = [2,2]
# Output: [2]
# Example 2:

# Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
# Output: [9,4]
# Explanation: [4,9] is also accepted.
# nums1 = [1,2,2,1]
# nums2 = [2,2]
nums1 = [4,9,5]
nums2 = [9,4,9,8,4]
# nums1 = [3,1,2]
# nums2 = [1]
p intersection(nums1, nums2)