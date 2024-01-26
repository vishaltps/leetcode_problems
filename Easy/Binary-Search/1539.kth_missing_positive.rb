# Given an array arr of positive integers sorted in a strictly increasing order, and an integer k.

# Return the kth positive integer that is missing from this array.

def find_kth_positive(arr, k)
  # return k if arr[0] > k

  # arr.each do |a|
  #   if a <= k
  #     k += 1
  #   else
  #     break
  #   end
  # end
  # k
  # 1.upto(1000) do |i|
  #   next if arr.include? i

  #   k -= 1
  #   return i if k <= 0
  # end
  return k if arr[0] > k

  left = 0
  right = arr.size - 1
  while left <= right
    mid = left + (right - left) / 2
 
    missing = arr[mid] - (mid + 1)

    if missing < k
      left = mid + 1
    else
      right = mid - 1
    end
  end
  k + right + 1
end

# Example 1:

# Input: arr = [2,3,4,7,11], k = 5
# Output: 9
# Explanation: The missing positive integers are [1,5,6,8,9,10,12,13,...]. The 5th missing positive integer is 9.
# Example 2:

# Input: arr = [1,2,3,4], k = 2
# Output: 6
# Explanation: The missing positive integers are [5,6,7,...]. The 2nd missing positive integer is 6.
 

# arr = [2,3,4,7,11]
#  k = 5
# arr = [1,2,3,4]
#  k = 2
arr = [1,4,5,6]
 k = 2
p find_kth_positive(arr, k)