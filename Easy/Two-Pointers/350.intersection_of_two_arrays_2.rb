# Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.

def intersect(nums1, nums2)
  result = []
  h = Hash.new(0)
  nums1.each do |n|
    h[n] += 1
  end
  nums2.each do |n|
    if h[n].positive?
      result << n
      h[n] -= 1
    end
  end
  result
end

# Input: 
# Output: [2,2]

# nums1 = [1,2,2,1]
# nums2 = [2,2]
# p intersect(nums1, nums2)

nums1 = [4,9,5]
nums2 = [9,4,9,8,4]
# # Output: [4,9]
p intersect(nums1, nums2)

nums1 = [1,2,2,1]
nums2 = [2]
p intersect(nums1, nums2)