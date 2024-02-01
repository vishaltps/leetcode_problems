# Given two sorted arrays of size m and n respectively, you are tasked with finding the element that would be at the k’th position of the final sorted array.

def kth_element(arr1, arr2, k)
  n1 = arr1.size
  n2 = arr2.size

  return kth_element(arr2, arr1, k) if n1 > n2

  low = [0, k - n2].max
  high = [n1, k].min
  left = k
  
  while low <= high
    mid1 = (low + high) >> 1
    mid2 = left - mid1

    l1, l2, r1, r2 = -Float::INFINITY, -Float::INFINITY, Float::INFINITY, Float::INFINITY

    l1 = arr1[mid1 - 1] if mid1 - 1 >= 0
    l2 = arr2[mid2 - 1] if mid2 - 1 >= 0
    r1 = arr1[mid1] if mid1 < n1
    r2 = arr2[mid2] if mid2 < n2

    if l1 <= r2 && l2 <= r1
      return [l1, l2].max
    elsif l1 > r2
      high = mid1 - 1
    else
      low = mid1 + 1
    end
  end
  0
end
# Input : Array 1 - 2 3 6 7 9
#         Array 2 - 1 4 8 10
#         k = 5
# Output : 6
# Explanation: The final sorted array would be -
# 1, 2, 3, 4, 6, 7, 8, 9, 10
# The 5th element of this array is 6.

# Input : Array 1 - 100 112 256 349 770
#         Array 2 - 72 86 113 119 265 445 892
#         k = 7
# Output : 256
# Explanation: Final sorted array is -
# 72, 86, 100, 112, 113, 119, 256, 265, 349, 445, 770, 892
# 7th element of this array is 256.

# arr1 = [2, 3, 6, 7, 9]
# arr2 = [1, 4, 8, 10]
# k = 5
# arr1 = [100, 112, 256, 349, 770]
# arr2 = [72, 86, 113, 119, 265, 445, 892]
# k = 7
p kth_element(arr1, arr2, k)