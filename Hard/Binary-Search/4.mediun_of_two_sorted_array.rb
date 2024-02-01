# Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

# The overall run time complexity should be O(log (m+n)).

def find_median_sorted_arrays(nums1, nums2)
  # merged_arry = (nums1 + nums2).sort
  # mid = merged_arry.length / 2
  # if(merged_arry.length % 2 == 0)
  #     (merged_arry[mid - 1] + merged_arry[mid]) / 2.to_f
  # else
  #     merged_arry[mid].to_f
  # end
  
  n1, n2 = nums1.size, nums2.size
  
  return find_median_sorted_arrays(nums2, nums1) if n1 > n2

  low, high = 0, n1
  left = (n1 + n2 + 1) / 2
  n = n1 + n2

  while low <= high
    mid1 = (low + high) >> 1
    mid2 = left - mid1
    l1, l2, r1, r2 = -Float::INFINITY, -Float::INFINITY, Float::INFINITY, Float::INFINITY

    l1 = nums1[mid1 - 1] if mid1 - 1 >= 0
    l2 = nums2[mid2 - 1] if mid2 - 1 >= 0
    r1 = nums1[mid1] if mid1 < n1
    r2 = nums2[mid2] if mid2 < n2

    if l1 <= r2 && l2 <= r1
      if n % 2 == 1
        return [l1, l2].max.to_f
      else
        return (([l1, l2].max + [r1, r2].min) / 2.0)
      end
    elsif l1 > r2
      high = mid1 - 1
    else
      low = mid1 + 1
    end
  end
end

# Example 1:

# Input: nums1 = [1,3], nums2 = [2]
# Output: 2.00000
# Explanation: merged array = [1,2,3] and median is 2.
# Example 2:

# Input: nums1 = [1,2], nums2 = [3,4]
# Output: 2.50000
# Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.

# nums1 = [1,3]
#  nums2 = [2]
nums1 = [1,2]
 nums2 = [3,4]
# nums1 = [2,4,6]
# nums2 = [1,3,5]
p find_median_sorted_arrays(nums1, nums2)