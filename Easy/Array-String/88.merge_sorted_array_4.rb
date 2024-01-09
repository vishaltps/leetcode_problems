require 'pry'
def merge(nums1, m, nums2, n)
  i = nums1.length - 1
  m -= 1
  n -= 1

  while i >= 0 && n >= 0
    if m >= 0 && nums1[m] > nums2[n]
      nums1[i] = nums1[m]
      m -= 1
    else
      nums1[i] = nums2[n]
      n -= 1
    end
    i -= 1
  end
  nums1
end

nums1 = [1,2,3,0,0,0]
m = 3
nums2 = [2,5,6]
n = 3

p merge(nums1, m, nums2, n)

